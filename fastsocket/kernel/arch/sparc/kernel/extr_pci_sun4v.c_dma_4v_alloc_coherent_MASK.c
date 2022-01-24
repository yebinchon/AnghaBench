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
struct iommu {int /*<<< orphan*/  lock; scalar_t__ page_table_map_base; } ;
struct TYPE_2__ {int numa_node; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 long DMA_ERROR_CODE ; 
 int HV_PCI_MAP_ATTR_READ ; 
 int HV_PCI_MAP_ATTR_WRITE ; 
 size_t FUNC0 (size_t) ; 
 size_t IO_PAGE_SHIFT ; 
 unsigned long MAX_ORDER ; 
 unsigned long PAGE_SIZE ; 
 unsigned long FUNC1 (unsigned long) ; 
 struct page* FUNC2 (int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (size_t) ; 
 long FUNC5 (unsigned long) ; 
 long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int,long) ; 
 long FUNC8 (struct device*,struct iommu*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct iommu*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void *FUNC18(struct device *dev, size_t size,
				   dma_addr_t *dma_addrp, gfp_t gfp)
{
	unsigned long flags, order, first_page, npages, n;
	struct iommu *iommu;
	struct page *page;
	void *ret;
	long entry;
	int nid;

	size = FUNC0(size);
	order = FUNC4(size);
	if (FUNC17(order >= MAX_ORDER))
		return NULL;

	npages = size >> IO_PAGE_SHIFT;

	nid = dev->archdata.numa_node;
	page = FUNC2(nid, gfp, order);
	if (FUNC17(!page))
		return NULL;

	first_page = (unsigned long) FUNC13(page);
	FUNC12((char *)first_page, 0, PAGE_SIZE << order);

	iommu = dev->archdata.iommu;

	FUNC15(&iommu->lock, flags);
	entry = FUNC8(dev, iommu, npages, NULL);
	FUNC16(&iommu->lock, flags);

	if (FUNC17(entry == DMA_ERROR_CODE))
		goto range_alloc_fail;

	*dma_addrp = (iommu->page_table_map_base +
		      (entry << IO_PAGE_SHIFT));
	ret = (void *) first_page;
	first_page = FUNC1(first_page);

	FUNC11(flags);

	FUNC7(dev,
			  (HV_PCI_MAP_ATTR_READ |
			   HV_PCI_MAP_ATTR_WRITE),
			  entry);

	for (n = 0; n < npages; n++) {
		long err = FUNC5(first_page + (n * PAGE_SIZE));
		if (FUNC17(err < 0L))
			goto iommu_map_fail;
	}

	if (FUNC17(FUNC6() < 0L))
		goto iommu_map_fail;

	FUNC10(flags);

	return ret;

iommu_map_fail:
	/* Interrupts are disabled.  */
	FUNC14(&iommu->lock);
	FUNC9(iommu, *dma_addrp, npages);
	FUNC16(&iommu->lock, flags);

range_alloc_fail:
	FUNC3(first_page, order);
	return NULL;
}