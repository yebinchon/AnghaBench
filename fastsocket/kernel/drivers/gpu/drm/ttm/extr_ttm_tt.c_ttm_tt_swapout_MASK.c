#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ttm_tt {scalar_t__ state; scalar_t__ caching_state; int num_pages; int /*<<< orphan*/  page_flags; struct page* swap_storage; TYPE_2__* bdev; struct page** pages; } ;
struct page {int dummy; } ;
typedef  struct page file ;
struct address_space {int dummy; } ;
struct TYPE_6__ {struct address_space* i_mapping; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ttm_tt_unpopulate ) (struct ttm_tt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  TTM_PAGE_FLAG_PERSISTENT_SWAP ; 
 int /*<<< orphan*/  TTM_PAGE_FLAG_SWAPPED ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct page*) ; 
 TYPE_3__* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct page* FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC11 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ttm_tt*) ; 
 scalar_t__ tt_cached ; 
 scalar_t__ tt_unbound ; 
 scalar_t__ tt_unpopulated ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct ttm_tt *ttm, struct file *persistent_swap_storage)
{
	struct address_space *swap_space;
	struct file *swap_storage;
	struct page *from_page;
	struct page *to_page;
	int i;
	int ret = -ENOMEM;

	FUNC0(ttm->state != tt_unbound && ttm->state != tt_unpopulated);
	FUNC0(ttm->caching_state != tt_cached);

	if (!persistent_swap_storage) {
		swap_storage = FUNC10("ttm swap",
						ttm->num_pages << PAGE_SHIFT,
						0);
		if (FUNC13(FUNC1(swap_storage))) {
			FUNC8("Failed allocating swap storage\n");
			return FUNC2(swap_storage);
		}
	} else
		swap_storage = persistent_swap_storage;

	swap_space = FUNC4(swap_storage)->i_mapping;

	for (i = 0; i < ttm->num_pages; ++i) {
		from_page = ttm->pages[i];
		if (FUNC13(from_page == NULL))
			continue;
		to_page = FUNC11(swap_space, i);
		if (FUNC13(FUNC1(to_page))) {
			ret = FUNC2(to_page);
			goto out_err;
		}
		FUNC3(to_page, from_page);
		FUNC9(to_page);
		FUNC6(to_page);
		FUNC7(to_page);
	}

	ttm->bdev->driver->ttm_tt_unpopulate(ttm);
	ttm->swap_storage = swap_storage;
	ttm->page_flags |= TTM_PAGE_FLAG_SWAPPED;
	if (persistent_swap_storage)
		ttm->page_flags |= TTM_PAGE_FLAG_PERSISTENT_SWAP;

	return 0;
out_err:
	if (!persistent_swap_storage)
		FUNC5(swap_storage);

	return ret;
}