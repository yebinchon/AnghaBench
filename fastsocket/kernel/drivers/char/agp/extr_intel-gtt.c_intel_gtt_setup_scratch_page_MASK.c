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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct page* scratch_page; int /*<<< orphan*/  scratch_page_dma; int /*<<< orphan*/  pcidev; scalar_t__ needs_dmar; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 TYPE_1__ intel_private ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct page *page;
	dma_addr_t dma_addr;

	page = FUNC0(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
	if (page == NULL)
		return -ENOMEM;
	FUNC1(page);
	FUNC5(page, 1);

	if (intel_private.needs_dmar) {
		dma_addr = FUNC4(intel_private.pcidev, page, 0,
				    PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
		if (FUNC3(intel_private.pcidev, dma_addr))
			return -EINVAL;

		intel_private.scratch_page_dma = dma_addr;
	} else
		intel_private.scratch_page_dma = FUNC2(page);

	intel_private.scratch_page = page;

	return 0;
}