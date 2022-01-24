#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned nfaces, unsigned blevel, unsigned llevel,
			      unsigned w0, unsigned h0, unsigned d0, unsigned nsamples, unsigned format,
			      unsigned block_align, unsigned height_align, unsigned base_align,
			      unsigned *l0_size, unsigned *mipmap_size)
{
	unsigned offset, i, level;
	unsigned width, height, depth, size;
	unsigned blocksize;
	unsigned nbx, nby;
	unsigned nlevels = llevel - blevel + 1;

	*l0_size = -1;
	blocksize = FUNC0(format);

	w0 = FUNC3(w0, 0);
	h0 = FUNC3(h0, 0);
	d0 = FUNC3(d0, 0);
	for(i = 0, offset = 0, level = blevel; i < nlevels; i++, level++) {
		width = FUNC3(w0, i);
		nbx = FUNC1(format, width);

		nbx = FUNC4(nbx, block_align);

		height = FUNC3(h0, i);
		nby = FUNC2(format, height);
		nby = FUNC4(nby, height_align);

		depth = FUNC3(d0, i);

		size = nbx * nby * blocksize * nsamples;
		if (nfaces)
			size *= nfaces;
		else
			size *= depth;

		if (i == 0)
			*l0_size = size;

		if (i == 0 || i == 1)
			offset = FUNC4(offset, base_align);

		offset += size;
	}
	*mipmap_size = offset;
	if (llevel == 0)
		*mipmap_size = *l0_size;
	if (!blevel)
		*mipmap_size -= *l0_size;
}