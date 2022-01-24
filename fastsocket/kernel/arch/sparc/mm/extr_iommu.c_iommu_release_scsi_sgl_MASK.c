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
struct scatterlist {int length; int offset; int dma_address; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,int) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC2(struct device *dev, struct scatterlist *sg, int sz)
{
	int n;

	while(sz != 0) {
		--sz;

		n = (sg->length + sg->offset + PAGE_SIZE-1) >> PAGE_SHIFT;
		FUNC0(dev, sg->dma_address & PAGE_MASK, n);
		sg->dma_address = 0x21212121;
		sg = FUNC1(sg);
	}
}