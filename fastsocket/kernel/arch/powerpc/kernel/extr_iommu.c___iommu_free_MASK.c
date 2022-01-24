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
struct iommu_table {unsigned long it_offset; int /*<<< orphan*/  it_map; } ;
struct iommu_pool {int /*<<< orphan*/  lock; } ;
typedef  unsigned long dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* tce_free ) (struct iommu_table*,unsigned long,unsigned int) ;} ;

/* Variables and functions */
 unsigned long IOMMU_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 struct iommu_pool* FUNC1 (struct iommu_table*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_table*,unsigned long,unsigned int) ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_table*,unsigned long,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct iommu_table *tbl, dma_addr_t dma_addr,
			unsigned int npages)
{
	unsigned long entry, free_entry;
	unsigned long flags;
	struct iommu_pool *pool;

	entry = dma_addr >> IOMMU_PAGE_SHIFT;
	free_entry = entry - tbl->it_offset;

	pool = FUNC1(tbl, free_entry);

	if (!FUNC2(tbl, dma_addr, npages))
		return;

	ppc_md.tce_free(tbl, entry, npages);

	FUNC3(&(pool->lock), flags);
	FUNC0(tbl->it_map, free_entry, npages);
	FUNC4(&(pool->lock), flags);
}