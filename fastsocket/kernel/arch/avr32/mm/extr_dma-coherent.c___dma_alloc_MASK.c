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
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  __GFP_COMP ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 

__attribute__((used)) static struct page *FUNC9(struct device *dev, size_t size,
				dma_addr_t *handle, gfp_t gfp)
{
	struct page *page, *free, *end;
	int order;

	/* Following is a work-around (a.k.a. hack) to prevent pages
	 * with __GFP_COMP being passed to split_page() which cannot
	 * handle them.  The real problem is that this flag probably
	 * should be 0 on AVR32 as it is not supported on this
	 * platform--see CONFIG_HUGETLB_PAGE. */
	gfp &= ~(__GFP_COMP);

	size = FUNC0(size);
	order = FUNC3(size);

	page = FUNC2(gfp, order);
	if (!page)
		return NULL;
	FUNC8(page, order);

	/*
	 * When accessing physical memory with valid cache data, we
	 * get a cache hit even if the virtual memory region is marked
	 * as uncached.
	 *
	 * Since the memory is newly allocated, there is no point in
	 * doing a writeback. If the previous owner cares, he should
	 * have flushed the cache before releasing the memory.
	 */
	FUNC4(FUNC7(FUNC6(page)), size);

	*handle = FUNC5(page);
	free = page + (size >> PAGE_SHIFT);
	end = page + (1 << order);

	/*
	 * Free any unused pages
	 */
	while (free < end) {
		FUNC1(free);
		free++;
	}

	return page;
}