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
struct scatterlist {int length; int offset; int dma_address; int dma_length; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct scatterlist *sg, int sz)
{
	unsigned long page, oldpage = 0;
	int n, i;

	while(sz != 0) {
		--sz;

		n = (sg->length + sg->offset + PAGE_SIZE-1) >> PAGE_SHIFT;

		/*
		 * We expect unmapped highmem pages to be not in the cache.
		 * XXX Is this a good assumption?
		 * XXX What if someone else unmaps it here and races us?
		 */
		if ((page = (unsigned long) FUNC2(FUNC4(sg))) != 0) {
			for (i = 0; i < n; i++) {
				if (page != oldpage) {	/* Already flushed? */
					FUNC0(page);
					oldpage = page;
				}
				page += PAGE_SIZE;
			}
		}

		sg->dma_address = FUNC1(dev, FUNC4(sg), n) + sg->offset;
		sg->dma_length = sg->length;
		sg = FUNC3(sg);
	}
}