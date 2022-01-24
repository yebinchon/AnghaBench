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
struct ttm_tt {int caching_state; scalar_t__ state; int num_pages; struct page** pages; } ;
struct page {int dummy; } ;
typedef  enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page**,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int tt_cached ; 
 scalar_t__ tt_unpopulated ; 
 int FUNC2 (struct page*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ttm_tt *ttm,
			      enum ttm_caching_state c_state)
{
	int i, j;
	struct page *cur_page;
	int ret;

	if (ttm->caching_state == c_state)
		return 0;

	if (ttm->state == tt_unpopulated) {
		/* Change caching but don't populate */
		ttm->caching_state = c_state;
		return 0;
	}

	if (ttm->caching_state == tt_cached)
		FUNC0(ttm->pages, ttm->num_pages);

	for (i = 0; i < ttm->num_pages; ++i) {
		cur_page = ttm->pages[i];
		if (FUNC1(cur_page != NULL)) {
			ret = FUNC2(cur_page,
						      ttm->caching_state,
						      c_state);
			if (FUNC3(ret != 0))
				goto out_err;
		}
	}

	ttm->caching_state = c_state;

	return 0;

out_err:
	for (j = 0; j < i; ++j) {
		cur_page = ttm->pages[j];
		if (FUNC1(cur_page != NULL)) {
			(void)FUNC2(cur_page, c_state,
						      ttm->caching_state);
		}
	}

	return ret;
}