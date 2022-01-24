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
struct iommu_pool {unsigned long start; unsigned long end; unsigned long hint; int /*<<< orphan*/  lock; } ;
struct iommu_table {int nr_pools; unsigned long it_offset; unsigned long it_blocksize; struct iommu_pool* pools; int /*<<< orphan*/  it_map; struct iommu_pool large_pool; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 unsigned long DMA_ERROR_CODE ; 
 int IOMMU_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct device*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  iommu_pool_hash ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static unsigned long FUNC12(struct device *dev,
				       struct iommu_table *tbl,
                                       unsigned long npages,
                                       unsigned long *handle,
                                       unsigned long mask,
                                       unsigned int align_order)
{ 
	unsigned long n, end, start;
	unsigned long limit;
	int largealloc = npages > 15;
	int pass = 0;
	unsigned long align_mask;
	unsigned long boundary_size;
	unsigned long flags;
	unsigned int pool_nr;
	struct iommu_pool *pool;

	align_mask = 0xffffffffffffffffl >> (64 - align_order);

	/* This allocator was derived from x86_64's bit string search */

	/* Sanity check */
	if (FUNC11(npages == 0)) {
		if (FUNC6())
			FUNC1(1);
		return DMA_ERROR_CODE;
	}

	/*
	 * We don't need to disable preemption here because any CPU can
	 * safely use any IOMMU pool.
	 */
	pool_nr = FUNC2(iommu_pool_hash) & (tbl->nr_pools - 1);

	if (largealloc)
		pool = &(tbl->large_pool);
	else
		pool = &(tbl->pools[pool_nr]);

	FUNC8(&(pool->lock), flags);

again:
	if ((pass == 0) && handle && *handle &&
	    (*handle >= pool->start) && (*handle < pool->end))
		start = *handle;
	else
		start = pool->hint;

	limit = pool->end;

	/* The case below can happen if we have a small segment appended
	 * to a large, or when the previous alloc was at the very end of
	 * the available space. If so, go back to the initial start.
	 */
	if (start >= limit)
		start = pool->start;

	if (limit + tbl->it_offset > mask) {
		limit = mask - tbl->it_offset + 1;
		/* If we're constrained on address range, first try
		 * at the masked hint to avoid O(n) search complexity,
		 * but on second pass, start at 0 in pool 0.
		 */
		if ((start & mask) >= limit || pass > 0) {
			FUNC9(&(pool->lock));
			pool = &(tbl->pools[0]);
			FUNC7(&(pool->lock));
			start = pool->start;
		} else {
			start &= mask;
		}
	}

	if (dev)
		boundary_size = FUNC0(FUNC3(dev) + 1,
				      1 << IOMMU_PAGE_SHIFT);
	else
		boundary_size = FUNC0(1UL << 32, 1 << IOMMU_PAGE_SHIFT);
	/* 4GB boundary for iseries_hv_alloc and iseries_hv_map */

	n = FUNC4(tbl->it_map, limit, start, npages,
			     tbl->it_offset, boundary_size >> IOMMU_PAGE_SHIFT,
			     align_mask);
	if (n == -1) {
		if (FUNC5(pass == 0)) {
			/* First try the pool from the start */
			pool->hint = pool->start;
			pass++;
			goto again;

		} else if (pass <= tbl->nr_pools) {
			/* Now try scanning all the other pools */
			FUNC9(&(pool->lock));
			pool_nr = (pool_nr + 1) & (tbl->nr_pools - 1);
			pool = &tbl->pools[pool_nr];
			FUNC7(&(pool->lock));
			pool->hint = pool->start;
			pass++;
			goto again;

		} else {
			/* Give up */
			FUNC10(&(pool->lock), flags);
			return DMA_ERROR_CODE;
		}
	}

	end = n + npages;

	/* Bump the hint to a new block for small allocs. */
	if (largealloc) {
		/* Don't bump to new block to avoid fragmentation */
		pool->hint = end;
	} else {
		/* Overflow will be taken care of at the next allocation */
		pool->hint = (end + tbl->it_blocksize - 1) &
		                ~(tbl->it_blocksize - 1);
	}

	/* Update handle for SG allocations */
	if (handle)
		*handle = end;

	FUNC10(&(pool->lock), flags);

	return n;
}