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
struct dma_region {int n_dma_pages; int /*<<< orphan*/ * sglist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct dma_region *dma, unsigned long offset,
				  unsigned int start, unsigned long *rem)
{
	int i;
	unsigned long off = offset;

	for (i = start; i < dma->n_dma_pages; i++) {
		if (off < FUNC1(&dma->sglist[i])) {
			*rem = off;
			break;
		}

		off -= FUNC1(&dma->sglist[i]);
	}

	FUNC0(i >= dma->n_dma_pages);

	return i;
}