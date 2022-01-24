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
typedef  int /*<<< orphan*/  u32 ;
struct pci_pbm_info {int /*<<< orphan*/  devhandle; } ;
struct iommu {size_t page_table_map_base; int /*<<< orphan*/  lock; } ;
struct dma_attrs {int dummy; } ;
struct TYPE_2__ {struct pci_pbm_info* host_controller; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 size_t FUNC1 (size_t) ; 
 size_t IO_PAGE_MASK ; 
 unsigned long IO_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu*,size_t,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct device *dev, dma_addr_t bus_addr,
			      size_t sz, enum dma_data_direction direction,
			      struct dma_attrs *attrs)
{
	struct pci_pbm_info *pbm;
	struct iommu *iommu;
	unsigned long flags, npages;
	long entry;
	u32 devhandle;

	if (FUNC8(direction == DMA_NONE)) {
		if (FUNC5())
			FUNC2(1);
		return;
	}

	iommu = dev->archdata.iommu;
	pbm = dev->archdata.host_controller;
	devhandle = pbm->devhandle;

	npages = FUNC1(bus_addr + sz) - (bus_addr & IO_PAGE_MASK);
	npages >>= IO_PAGE_SHIFT;
	bus_addr &= IO_PAGE_MASK;

	FUNC6(&iommu->lock, flags);

	FUNC3(iommu, bus_addr, npages);

	entry = (bus_addr - iommu->page_table_map_base) >> IO_PAGE_SHIFT;
	do {
		unsigned long num;

		num = FUNC4(devhandle, FUNC0(0, entry),
					    npages);
		entry += num;
		npages -= num;
	} while (npages != 0);

	FUNC7(&iommu->lock, flags);
}