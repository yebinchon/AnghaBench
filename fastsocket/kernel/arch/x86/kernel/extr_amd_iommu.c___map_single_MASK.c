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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct dma_ops_domain {int need_flush; TYPE_1__ domain; int /*<<< orphan*/  aperture_size; int /*<<< orphan*/  next_address; } ;
struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct amd_iommu*,struct dma_ops_domain*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alloced_io_mem ; 
 int /*<<< orphan*/  amd_iommu_unmap_flush ; 
 scalar_t__ bad_dma_address ; 
 int /*<<< orphan*/  cross_page ; 
 scalar_t__ FUNC3 (struct device*,struct dma_ops_domain*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct amd_iommu*,struct dma_ops_domain*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amd_iommu*,struct dma_ops_domain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_ops_domain*,scalar_t__,unsigned int) ; 
 unsigned long FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct amd_iommu*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct amd_iommu*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct amd_iommu*) ; 
 unsigned int FUNC11 (scalar_t__,size_t,scalar_t__) ; 
 int /*<<< orphan*/  total_map_requests ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static dma_addr_t FUNC13(struct device *dev,
			       struct amd_iommu *iommu,
			       struct dma_ops_domain *dma_dom,
			       phys_addr_t paddr,
			       size_t size,
			       int dir,
			       bool align,
			       u64 dma_mask)
{
	dma_addr_t offset = paddr & ~PAGE_MASK;
	dma_addr_t address, start, ret;
	unsigned int pages;
	unsigned long align_mask = 0;
	int i;

	pages = FUNC11(paddr, size, PAGE_SIZE);
	paddr &= PAGE_MASK;

	FUNC1(total_map_requests);

	if (pages > 1)
		FUNC1(cross_page);

	if (align)
		align_mask = (1UL << FUNC7(size)) - 1;

retry:
	address = FUNC3(dev, dma_dom, pages, align_mask,
					  dma_mask);
	if (FUNC12(address == bad_dma_address)) {
		/*
		 * setting next_address here will let the address
		 * allocator only scan the new allocated range in the
		 * first run. This is a small optimization.
		 */
		dma_dom->next_address = dma_dom->aperture_size;

		if (FUNC2(iommu, dma_dom, false, GFP_ATOMIC))
			goto out;

		/*
		 * aperture was sucessfully enlarged by 128 MB, try
		 * allocation again
		 */
		goto retry;
	}

	start = address;
	for (i = 0; i < pages; ++i) {
		ret = FUNC4(iommu, dma_dom, start, paddr, dir);
		if (ret == bad_dma_address)
			goto out_unmap;

		paddr += PAGE_SIZE;
		start += PAGE_SIZE;
	}
	address += offset;

	FUNC0(alloced_io_mem, size);

	if (FUNC12(dma_dom->need_flush && !amd_iommu_unmap_flush)) {
		FUNC9(iommu, dma_dom->domain.id);
		dma_dom->need_flush = false;
	} else if (FUNC12(FUNC10(iommu)))
		FUNC8(iommu, dma_dom->domain.id, address, size);

out:
	return address;

out_unmap:

	for (--i; i >= 0; --i) {
		start -= PAGE_SIZE;
		FUNC5(iommu, dma_dom, start);
	}

	FUNC6(dma_dom, address, pages);

	return bad_dma_address;
}