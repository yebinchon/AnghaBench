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
 scalar_t__ DMA_UNCACHED_REGION ; 
 int PAGE_SHIFT ; 
 scalar_t__ _ramend ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int dma_base ; 
 scalar_t__ dma_initialized ; 
 int* dma_page ; 
 int /*<<< orphan*/  dma_page_lock ; 
 int dma_pages ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC3(unsigned int pages)
{
	unsigned long ret = 0, flags;
	int i, count = 0;

	if (dma_initialized == 0)
		FUNC0(_ramend - DMA_UNCACHED_REGION, _ramend);

	FUNC1(&dma_page_lock, flags);

	for (i = 0; i < dma_pages;) {
		if (dma_page[i++] == 0) {
			if (++count == pages) {
				while (count--)
					dma_page[--i] = 1;
				ret = dma_base + (i << PAGE_SHIFT);
				break;
			}
		} else
			count = 0;
	}
	FUNC2(&dma_page_lock, flags);
	return ret;
}