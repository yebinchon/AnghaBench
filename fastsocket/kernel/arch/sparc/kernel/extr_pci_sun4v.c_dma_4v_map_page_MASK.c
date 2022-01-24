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
typedef  unsigned long u32 ;
struct page {int dummy; } ;
struct iommu {unsigned long page_table_map_base; int /*<<< orphan*/  lock; } ;
struct dma_attrs {int dummy; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 long DMA_ERROR_CODE ; 
 int DMA_NONE ; 
 int DMA_TO_DEVICE ; 
 unsigned long HV_PCI_MAP_ATTR_READ ; 
 unsigned long HV_PCI_MAP_ATTR_WRITE ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long IO_PAGE_MASK ; 
 unsigned long IO_PAGE_SHIFT ; 
 scalar_t__ IO_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 long FUNC3 (unsigned long) ; 
 long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct device*,unsigned long,long) ; 
 long FUNC6 (struct device*,struct iommu*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iommu*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static dma_addr_t FUNC16(struct device *dev, struct page *page,
				  unsigned long offset, size_t sz,
				  enum dma_data_direction direction,
				  struct dma_attrs *attrs)
{
	struct iommu *iommu;
	unsigned long flags, npages, oaddr;
	unsigned long i, base_paddr;
	u32 bus_addr, ret;
	unsigned long prot;
	long entry;

	iommu = dev->archdata.iommu;

	if (FUNC15(direction == DMA_NONE))
		goto bad;

	oaddr = (unsigned long)(FUNC10(page) + offset);
	npages = FUNC0(oaddr + sz) - (oaddr & IO_PAGE_MASK);
	npages >>= IO_PAGE_SHIFT;

	FUNC13(&iommu->lock, flags);
	entry = FUNC6(dev, iommu, npages, NULL);
	FUNC14(&iommu->lock, flags);

	if (FUNC15(entry == DMA_ERROR_CODE))
		goto bad;

	bus_addr = (iommu->page_table_map_base +
		    (entry << IO_PAGE_SHIFT));
	ret = bus_addr | (oaddr & ~IO_PAGE_MASK);
	base_paddr = FUNC2(oaddr & IO_PAGE_MASK);
	prot = HV_PCI_MAP_ATTR_READ;
	if (direction != DMA_TO_DEVICE)
		prot |= HV_PCI_MAP_ATTR_WRITE;

	FUNC9(flags);

	FUNC5(dev, prot, entry);

	for (i = 0; i < npages; i++, base_paddr += IO_PAGE_SIZE) {
		long err = FUNC3(base_paddr);
		if (FUNC15(err < 0L))
			goto iommu_map_fail;
	}
	if (FUNC15(FUNC4() < 0L))
		goto iommu_map_fail;

	FUNC8(flags);

	return ret;

bad:
	if (FUNC11())
		FUNC1(1);
	return DMA_ERROR_CODE;

iommu_map_fail:
	/* Interrupts are disabled.  */
	FUNC12(&iommu->lock);
	FUNC7(iommu, bus_addr, npages);
	FUNC14(&iommu->lock, flags);

	return DMA_ERROR_CODE;
}