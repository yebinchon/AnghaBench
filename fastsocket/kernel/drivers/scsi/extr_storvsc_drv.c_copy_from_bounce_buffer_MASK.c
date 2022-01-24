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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 unsigned long FUNC4 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static unsigned int FUNC6(struct scatterlist *orig_sgl,
					    struct scatterlist *bounce_sgl,
					    unsigned int orig_sgl_count,
					    unsigned int bounce_sgl_count)
{
	int i;
	int j = 0;
	unsigned long src, dest;
	unsigned int srclen, destlen, copylen;
	unsigned int total_copied = 0;
	unsigned long bounce_addr = 0;
	unsigned long dest_addr = 0;
	unsigned long flags;

	FUNC1(flags);

	for (i = 0; i < orig_sgl_count; i++) {
		dest_addr = FUNC4(orig_sgl,i) + orig_sgl[i].offset;
		dest = dest_addr;
		destlen = orig_sgl[i].length;

		if (bounce_addr == 0)
			bounce_addr = FUNC4(bounce_sgl,j);

		while (destlen) {
			src = bounce_addr + bounce_sgl[j].offset;
			srclen = bounce_sgl[j].length - bounce_sgl[j].offset;

			copylen = FUNC3(srclen, destlen);
			FUNC2((void *)dest, (void *)src, copylen);

			total_copied += copylen;
			bounce_sgl[j].offset += copylen;
			destlen -= copylen;
			dest += copylen;

			if (bounce_sgl[j].offset == bounce_sgl[j].length) {
				/* full */
				FUNC5(bounce_addr);
				j++;

				/*
				 * It is possible that the number of elements
				 * in the bounce buffer may not be equal to
				 * the number of elements in the original
				 * scatter list. Handle this correctly.
				 */

				if (j == bounce_sgl_count) {
					/*
					 * We are done; cleanup and return.
					 */
					FUNC5(dest_addr - orig_sgl[i].offset);
					FUNC0(flags);
					return total_copied;
				}

				/* if we need to use another bounce buffer */
				if (destlen || i != orig_sgl_count - 1)
					bounce_addr = FUNC4(bounce_sgl,j);
			} else if (destlen == 0 && i == orig_sgl_count - 1) {
				/* unmap the last bounce that is < PAGE_SIZE */
				FUNC5(bounce_addr);
			}
		}

		FUNC5(dest_addr - orig_sgl[i].offset);
	}

	FUNC0(flags);

	return total_copied;
}