#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct dma_ops_domain {int aperture_size; TYPE_1__** aperture; int /*<<< orphan*/  domain; } ;
struct aperture_range {int dummy; } ;
struct amd_iommu {unsigned long exclusion_start; int exclusion_length; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int offset; void* bitmap; int /*<<< orphan*/ ** pte_pages; } ;

/* Variables and functions */
 int APERTURE_MAX_RANGES ; 
 int APERTURE_RANGE_PAGES ; 
 int APERTURE_RANGE_SHIFT ; 
 int APERTURE_RANGE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long MSI_ADDR_BASE_LO ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PM_MAP_4k ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_ops_domain*,unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned long,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct amd_iommu *iommu,
			   struct dma_ops_domain *dma_dom,
			   bool populate, gfp_t gfp)
{
	int index = dma_dom->aperture_size >> APERTURE_RANGE_SHIFT;
	unsigned long i, old_size;

#ifdef CONFIG_IOMMU_STRESS
	populate = false;
#endif

	if (index >= APERTURE_MAX_RANGES)
		return -ENOMEM;

	dma_dom->aperture[index] = FUNC8(sizeof(struct aperture_range), gfp);
	if (!dma_dom->aperture[index])
		return -ENOMEM;

	dma_dom->aperture[index]->bitmap = (void *)FUNC5(gfp);
	if (!dma_dom->aperture[index]->bitmap)
		goto out_free;

	dma_dom->aperture[index]->offset = dma_dom->aperture_size;

	if (populate) {
		unsigned long address = dma_dom->aperture_size;
		int i, num_ptes = APERTURE_RANGE_PAGES / 512;
		u64 *pte, *pte_page;

		for (i = 0; i < num_ptes; ++i) {
			pte = FUNC1(&dma_dom->domain, address, PM_MAP_4k,
					&pte_page, gfp);
			if (!pte)
				goto out_free;

			dma_dom->aperture[index]->pte_pages[i] = pte_page;

			address += APERTURE_RANGE_SIZE / 64;
		}
	}

	old_size                = dma_dom->aperture_size;
	dma_dom->aperture_size += APERTURE_RANGE_SIZE;

	/* Reserve address range used for MSI messages */
	if (old_size < MSI_ADDR_BASE_LO &&
	    dma_dom->aperture_size > MSI_ADDR_BASE_LO) {
		unsigned long spage;
		int pages;

		pages = FUNC6(MSI_ADDR_BASE_LO, 0x10000, PAGE_SIZE);
		spage = MSI_ADDR_BASE_LO >> PAGE_SHIFT;

		FUNC2(dma_dom, spage, pages);
	}

	/* Intialize the exclusion range if necessary */
	if (iommu->exclusion_start &&
	    iommu->exclusion_start >= dma_dom->aperture[index]->offset &&
	    iommu->exclusion_start < dma_dom->aperture_size) {
		unsigned long startpage = iommu->exclusion_start >> PAGE_SHIFT;
		int pages = FUNC6(iommu->exclusion_start,
					    iommu->exclusion_length,
					    PAGE_SIZE);
		FUNC2(dma_dom, startpage, pages);
	}

	/*
	 * Check for areas already mapped as present in the new aperture
	 * range and mark those pages as reserved in the allocator. Such
	 * mappings may already exist as a result of requested unity
	 * mappings for devices.
	 */
	for (i = dma_dom->aperture[index]->offset;
	     i < dma_dom->aperture_size;
	     i += PAGE_SIZE) {
		u64 *pte = FUNC3(&dma_dom->domain, i, PM_MAP_4k);
		if (!pte || !FUNC0(*pte))
			continue;

		FUNC2(dma_dom, i >> PAGE_SHIFT, 1);
	}

	FUNC9(&dma_dom->domain);

	return 0;

out_free:
	FUNC9(&dma_dom->domain);

	FUNC4((unsigned long)dma_dom->aperture[index]->bitmap);

	FUNC7(dma_dom->aperture[index]);
	dma_dom->aperture[index] = NULL;

	return -ENOMEM;
}