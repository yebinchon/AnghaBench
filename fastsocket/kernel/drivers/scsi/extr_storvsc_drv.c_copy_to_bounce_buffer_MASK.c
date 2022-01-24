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
struct scatterlist {unsigned long offset; unsigned int length; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 unsigned long FUNC4 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static unsigned int FUNC6(struct scatterlist *orig_sgl,
					  struct scatterlist *bounce_sgl,
					  unsigned int orig_sgl_count)
{
	int i;
	int j = 0;
	unsigned long src, dest;
	unsigned int srclen, destlen, copylen;
	unsigned int total_copied = 0;
	unsigned long bounce_addr = 0;
	unsigned long src_addr = 0;
	unsigned long flags;

	FUNC1(flags);

	for (i = 0; i < orig_sgl_count; i++) {
		src_addr = FUNC4(orig_sgl,i) + orig_sgl[i].offset;
		src = src_addr;
		srclen = orig_sgl[i].length;

		if (bounce_addr == 0)
			bounce_addr = FUNC4(bounce_sgl,j);

		while (srclen) {
			/* assume bounce offset always == 0 */
			dest = bounce_addr + bounce_sgl[j].length;
			destlen = PAGE_SIZE - bounce_sgl[j].length;

			copylen = FUNC3(srclen, destlen);
			FUNC2((void *)dest, (void *)src, copylen);

			total_copied += copylen;
			bounce_sgl[j].length += copylen;
			srclen -= copylen;
			src += copylen;

			if (bounce_sgl[j].length == PAGE_SIZE) {
				/* full..move to next entry */
				FUNC5(bounce_addr);
				j++;

				/* if we need to use another bounce buffer */
				if (srclen || i != orig_sgl_count - 1)
					bounce_addr = FUNC4(bounce_sgl,j);

			} else if (srclen == 0 && i == orig_sgl_count - 1) {
				/* unmap the last bounce that is < PAGE_SIZE */
				FUNC5(bounce_addr);
			}
		}

		FUNC5(src_addr - orig_sgl[i].offset);
	}

	FUNC0(flags);

	return total_copied;
}