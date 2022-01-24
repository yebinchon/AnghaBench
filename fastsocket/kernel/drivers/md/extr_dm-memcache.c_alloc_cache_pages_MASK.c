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
struct page_list {struct page_list* next; struct page* page; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page_list*) ; 
 struct page_list* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page_list *FUNC4(unsigned pages)
{
	struct page_list *pl, *ret = NULL;
	struct page *page;

	while (pages--) {
		page = FUNC1(GFP_NOIO);
		if (!page)
			goto err;

		pl = FUNC3(sizeof(*pl), GFP_NOIO);
		if (!pl) {
			FUNC0(page);
			goto err;
		}

		pl->page = page;
		pl->next = ret;
		ret = pl;
	}

	return ret;

err:
	FUNC2(ret);
	return NULL;
}