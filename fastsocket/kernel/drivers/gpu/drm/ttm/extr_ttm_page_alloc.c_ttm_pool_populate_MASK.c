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
struct ttm_tt {scalar_t__ state; unsigned int num_pages; int page_flags; int /*<<< orphan*/ * pages; int /*<<< orphan*/  caching_state; TYPE_1__* glob; } ;
struct ttm_mem_global {int dummy; } ;
struct TYPE_2__ {struct ttm_mem_global* mem_glob; } ;

/* Variables and functions */
 int ENOMEM ; 
 int TTM_PAGE_FLAG_SWAPPED ; 
 scalar_t__ tt_unbound ; 
 scalar_t__ tt_unpopulated ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ttm_mem_global*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_tt*) ; 
 int FUNC3 (struct ttm_tt*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct ttm_tt *ttm)
{
	struct ttm_mem_global *mem_glob = ttm->glob->mem_glob;
	unsigned i;
	int ret;

	if (ttm->state != tt_unpopulated)
		return 0;

	for (i = 0; i < ttm->num_pages; ++i) {
		ret = FUNC0(&ttm->pages[i], 1,
				    ttm->page_flags,
				    ttm->caching_state);
		if (ret != 0) {
			FUNC2(ttm);
			return -ENOMEM;
		}

		ret = FUNC1(mem_glob, ttm->pages[i],
						false, false);
		if (FUNC4(ret != 0)) {
			FUNC2(ttm);
			return -ENOMEM;
		}
	}

	if (FUNC4(ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)) {
		ret = FUNC3(ttm);
		if (FUNC4(ret != 0)) {
			FUNC2(ttm);
			return ret;
		}
	}

	ttm->state = tt_unbound;
	return 0;
}