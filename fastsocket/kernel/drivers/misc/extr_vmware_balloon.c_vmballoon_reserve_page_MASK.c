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
struct TYPE_2__ {int /*<<< orphan*/  refused_alloc; int /*<<< orphan*/  sleep_alloc_fail; int /*<<< orphan*/  alloc_fail; int /*<<< orphan*/  sleep_alloc; int /*<<< orphan*/  alloc; } ;
struct vmballoon {scalar_t__ n_refused_pages; int /*<<< orphan*/  size; int /*<<< orphan*/  pages; int /*<<< orphan*/  refused_pages; scalar_t__ reset_required; TYPE_1__ stats; } ;
struct page {int /*<<< orphan*/  lru; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VMW_BALLOON_MAX_REFUSED ; 
 int /*<<< orphan*/  VMW_PAGE_ALLOC_CANSLEEP ; 
 int /*<<< orphan*/  VMW_PAGE_ALLOC_NOSLEEP ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct vmballoon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vmballoon *b, bool can_sleep)
{
	struct page *page;
	gfp_t flags;
	bool locked = false;

	do {
		if (!can_sleep)
			FUNC0(b->stats.alloc);
		else
			FUNC0(b->stats.sleep_alloc);

		flags = can_sleep ? VMW_PAGE_ALLOC_CANSLEEP : VMW_PAGE_ALLOC_NOSLEEP;
		page = FUNC2(flags);
		if (!page) {
			if (!can_sleep)
				FUNC0(b->stats.alloc_fail);
			else
				FUNC0(b->stats.sleep_alloc_fail);
			return -ENOMEM;
		}

		/* inform monitor */
		locked = FUNC5(b, FUNC4(page));
		if (!locked) {
			FUNC0(b->stats.refused_alloc);

			if (b->reset_required) {
				FUNC1(page);
				return -EIO;
			}

			/*
			 * Place page on the list of non-balloonable pages
			 * and retry allocation, unless we already accumulated
			 * too many of them, in which case take a breather.
			 */
			FUNC3(&page->lru, &b->refused_pages);
			if (++b->n_refused_pages >= VMW_BALLOON_MAX_REFUSED)
				return -EIO;
		}
	} while (!locked);

	/* track allocated page */
	FUNC3(&page->lru, &b->pages);

	/* update balloon size */
	b->size++;

	return 0;
}