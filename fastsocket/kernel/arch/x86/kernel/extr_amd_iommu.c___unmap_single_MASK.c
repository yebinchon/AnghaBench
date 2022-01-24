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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct dma_ops_domain {size_t aperture_size; int need_flush; TYPE_1__ domain; } ;
struct amd_iommu {int dummy; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  alloced_io_mem ; 
 scalar_t__ amd_iommu_unmap_flush ; 
 size_t bad_dma_address ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*,struct dma_ops_domain*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_ops_domain*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct amd_iommu*,int /*<<< orphan*/ ,size_t,size_t) ; 
 unsigned int FUNC4 (size_t,size_t,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct amd_iommu *iommu,
			   struct dma_ops_domain *dma_dom,
			   dma_addr_t dma_addr,
			   size_t size,
			   int dir)
{
	dma_addr_t flush_addr;
	dma_addr_t i, start;
	unsigned int pages;

	if ((dma_addr == bad_dma_address) ||
	    (dma_addr + size > dma_dom->aperture_size))
		return;

	flush_addr = dma_addr;
	pages = FUNC4(dma_addr, size, PAGE_SIZE);
	dma_addr &= PAGE_MASK;
	start = dma_addr;

	for (i = 0; i < pages; ++i) {
		FUNC1(iommu, dma_dom, start);
		start += PAGE_SIZE;
	}

	FUNC0(alloced_io_mem, size);

	FUNC2(dma_dom, dma_addr, pages);

	if (amd_iommu_unmap_flush || dma_dom->need_flush) {
		FUNC3(iommu, dma_dom->domain.id, flush_addr, size);
		dma_dom->need_flush = false;
	}
}