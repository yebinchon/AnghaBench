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
struct ttm_tt {int num_pages; int page_flags; struct file* swap_storage; struct page** pages; } ;
struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int TTM_PAGE_FLAG_PERSISTENT_SWAP ; 
 int TTM_PAGE_FLAG_SWAPPED ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct page*) ; 
 TYPE_1__* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct page* FUNC7 (struct address_space*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct ttm_tt *ttm)
{
	struct address_space *swap_space;
	struct file *swap_storage;
	struct page *from_page;
	struct page *to_page;
	int i;
	int ret = -ENOMEM;

	swap_storage = ttm->swap_storage;
	FUNC0(swap_storage == NULL);

	swap_space = FUNC4(swap_storage)->i_mapping;

	for (i = 0; i < ttm->num_pages; ++i) {
		from_page = FUNC7(swap_space, i);
		if (FUNC1(from_page)) {
			ret = FUNC2(from_page);
			goto out_err;
		}
		to_page = ttm->pages[i];
		if (FUNC8(to_page == NULL))
			goto out_err;

		FUNC3(to_page, from_page);
		FUNC6(from_page);
	}

	if (!(ttm->page_flags & TTM_PAGE_FLAG_PERSISTENT_SWAP))
		FUNC5(swap_storage);
	ttm->swap_storage = NULL;
	ttm->page_flags &= ~TTM_PAGE_FLAG_SWAPPED;

	return 0;
out_err:
	return ret;
}