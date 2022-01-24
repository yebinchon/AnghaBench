#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dma_address; int length; } ;
struct iounit_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  bmap; } ;
struct TYPE_2__ {struct iounit_struct* iommu; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IOUNIT_DMA_BASE ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct scatterlist *sg, int sz)
{
	struct iounit_struct *iounit = dev->archdata.iommu;
	unsigned long flags;
	unsigned long vaddr, len;

	FUNC3(&iounit->lock, flags);
	while (sz != 0) {
		--sz;
		len = ((sg->dma_address & ~PAGE_MASK) + sg->length + (PAGE_SIZE-1)) >> PAGE_SHIFT;
		vaddr = (sg->dma_address - IOUNIT_DMA_BASE) >> PAGE_SHIFT;
		FUNC0(("iounit_release %08lx-%08lx\n", (long)vaddr, (long)len+vaddr));
		for (len += vaddr; vaddr < len; vaddr++)
			FUNC1(vaddr, iounit->bmap);
		sg = FUNC2(sg);
	}
	FUNC4(&iounit->lock, flags);
}