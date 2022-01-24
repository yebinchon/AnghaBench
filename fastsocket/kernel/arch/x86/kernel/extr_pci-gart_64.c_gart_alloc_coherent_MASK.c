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
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int GFP_DMA ; 
 int __GFP_DMA ; 
 int __GFP_DMA32 ; 
 int __GFP_HIGHMEM ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned long) ; 
 struct page* FUNC1 (int,unsigned long) ; 
 scalar_t__ bad_dma_address ; 
 void* FUNC2 (struct device*,size_t,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ force_iommu ; 
 unsigned long FUNC5 (size_t) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static void *
FUNC8(struct device *dev, size_t size, dma_addr_t *dma_addr,
		    gfp_t flag)
{
	dma_addr_t paddr;
	unsigned long align_mask;
	struct page *page;

	if (force_iommu && !(flag & GFP_DMA)) {
		flag &= ~(__GFP_DMA | __GFP_HIGHMEM | __GFP_DMA32);
		page = FUNC1(flag | __GFP_ZERO, FUNC5(size));
		if (!page)
			return NULL;

		align_mask = (1UL << FUNC5(size)) - 1;
		paddr = FUNC3(dev, FUNC7(page), size,
				     DMA_BIDIRECTIONAL, align_mask);

		FUNC4();
		if (paddr != bad_dma_address) {
			*dma_addr = paddr;
			return FUNC6(page);
		}
		FUNC0(page, FUNC5(size));
	} else
		return FUNC2(dev, size, dma_addr, flag);

	return NULL;
}