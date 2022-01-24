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
struct iommu_arena {int /*<<< orphan*/  map; } ;
struct iommu {unsigned long page_table_map_base; struct iommu_arena arena; } ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long IO_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

void FUNC1(struct iommu *iommu, dma_addr_t dma_addr, unsigned long npages)
{
	struct iommu_arena *arena = &iommu->arena;
	unsigned long entry;

	entry = (dma_addr - iommu->page_table_map_base) >> IO_PAGE_SHIFT;

	FUNC0(arena->map, entry, npages);
}