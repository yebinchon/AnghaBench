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
struct iommu {unsigned long page_table_map_base; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct pci_pbm_info* host_controller; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (size_t) ; 
 unsigned long IO_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu*,unsigned long,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct device *dev, size_t size, void *cpu,
				 dma_addr_t dvma)
{
	struct pci_pbm_info *pbm;
	struct iommu *iommu;
	unsigned long flags, order, npages, entry;
	u32 devhandle;

	npages = FUNC1(size) >> IO_PAGE_SHIFT;
	iommu = dev->archdata.iommu;
	pbm = dev->archdata.host_controller;
	devhandle = pbm->devhandle;
	entry = ((dvma - iommu->page_table_map_base) >> IO_PAGE_SHIFT);

	FUNC6(&iommu->lock, flags);

	FUNC4(iommu, dvma, npages);

	do {
		unsigned long num;

		num = FUNC5(devhandle, FUNC0(0, entry),
					    npages);
		entry += num;
		npages -= num;
	} while (npages != 0);

	FUNC7(&iommu->lock, flags);

	order = FUNC3(size);
	if (order < 10)
		FUNC2((unsigned long)cpu, order);
}