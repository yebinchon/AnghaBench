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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_tt {unsigned long num_pages; int /*<<< orphan*/  pages; int /*<<< orphan*/ * swap_storage; int /*<<< orphan*/  state; struct page* dummy_read_page; int /*<<< orphan*/  page_flags; int /*<<< orphan*/  caching_state; int /*<<< orphan*/  glob; struct ttm_bo_device* bdev; } ;
struct ttm_dma_tt {int /*<<< orphan*/  dma_address; int /*<<< orphan*/  pages_list; struct ttm_tt ttm; } ;
struct ttm_bo_device {int /*<<< orphan*/  glob; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  tt_cached ; 
 int /*<<< orphan*/  tt_unpopulated ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_dma_tt*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_tt*) ; 

int FUNC4(struct ttm_dma_tt *ttm_dma, struct ttm_bo_device *bdev,
		unsigned long size, uint32_t page_flags,
		struct page *dummy_read_page)
{
	struct ttm_tt *ttm = &ttm_dma->ttm;

	ttm->bdev = bdev;
	ttm->glob = bdev->glob;
	ttm->num_pages = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	ttm->caching_state = tt_cached;
	ttm->page_flags = page_flags;
	ttm->dummy_read_page = dummy_read_page;
	ttm->state = tt_unpopulated;
	ttm->swap_storage = NULL;

	FUNC0(&ttm_dma->pages_list);
	FUNC2(ttm_dma);
	if (!ttm->pages || !ttm_dma->dma_address) {
		FUNC3(ttm);
		FUNC1("Failed allocating page table\n");
		return -ENOMEM;
	}
	return 0;
}