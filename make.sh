#!/bin/sh

sh autogen.sh
make distclean
if [ -f build/ ]; then
	rm -rf build
fi
mkdir build && cd build && ../configure --prefix="$(pwd)" --enable-debug
make -j10