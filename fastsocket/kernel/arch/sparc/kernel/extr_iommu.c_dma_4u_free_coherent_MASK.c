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
struct iommu {int page_table_map_base; int /*<<< orphan*/  lock; int /*<<< orphan*/ * page_table; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  int /*<<< orphan*/  iopte_t ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int IO_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct device *dev, size_t size,
				 void *cpu, dma_addr_t dvma)
{
	struct iommu *iommu;
	iopte_t *iopte;
	unsigned long flags, order, npages;

	npages = FUNC0(size) >> IO_PAGE_SHIFT;
	iommu = dev->archdata.iommu;
	iopte = iommu->page_table +
		((dvma - iommu->page_table_map_base) >> IO_PAGE_SHIFT);

	FUNC4(&iommu->lock, flags);

	FUNC3(iommu, dvma, npages);

	FUNC5(&iommu->lock, flags);

	order = FUNC2(size);
	if (order < 10)
		FUNC1((unsigned long)cpu, order);
}