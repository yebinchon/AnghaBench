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
struct memory_notify {unsigned long nr_pages; int /*<<< orphan*/  start_pfn; } ;
struct cmm_page_array {int index; unsigned long* page; struct cmm_page_array* next; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_NOIO ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  cmm_lock ; 
 struct cmm_page_array* cmm_page_list ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  loaned_pages ; 
 int /*<<< orphan*/  FUNC4 (struct cmm_page_array*,struct cmm_page_array*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  totalram_pages ; 

__attribute__((used)) static int FUNC9(void *arg)
{
	struct memory_notify *marg = arg;
	unsigned long start_page = (unsigned long)FUNC5(marg->start_pfn);
	unsigned long end_page = start_page + (marg->nr_pages << PAGE_SHIFT);
	struct cmm_page_array *pa_curr, *pa_last, *npa;
	unsigned long idx;
	unsigned long freed = 0;

	FUNC2("Memory going offline, searching 0x%lx (%ld pages).\n",
			start_page, marg->nr_pages);
	FUNC7(&cmm_lock);

	/* Search the page list for pages in the range to be offlined */
	pa_last = pa_curr = cmm_page_list;
	while (pa_curr) {
		for (idx = (pa_curr->index - 1); (idx + 1) > 0; idx--) {
			if ((pa_curr->page[idx] < start_page) ||
			    (pa_curr->page[idx] >= end_page))
				continue;

			FUNC6(FUNC1(pa_curr->page[idx]));
			FUNC3(pa_curr->page[idx]);
			freed++;
			loaned_pages--;
			totalram_pages++;
			pa_curr->page[idx] = pa_last->page[--pa_last->index];
			if (pa_last->index == 0) {
				if (pa_curr == pa_last)
					pa_curr = pa_last->next;
				pa_last = pa_last->next;
				FUNC3((unsigned long)cmm_page_list);
				cmm_page_list = pa_last;
				continue;
			}
		}
		pa_curr = pa_curr->next;
	}

	/* Search for page list structures in the range to be offlined */
	pa_last = NULL;
	pa_curr = cmm_page_list;
	while (pa_curr) {
		if (((unsigned long)pa_curr >= start_page) &&
				((unsigned long)pa_curr < end_page)) {
			npa = (struct cmm_page_array *)FUNC0(
					GFP_NOIO | __GFP_NOWARN |
					__GFP_NORETRY | __GFP_NOMEMALLOC);
			if (!npa) {
				FUNC8(&cmm_lock);
				FUNC2("Failed to allocate memory for list "
						"management. Memory hotplug "
						"failed.\n");
				return ENOMEM;
			}
			FUNC4(npa, pa_curr, PAGE_SIZE);
			if (pa_curr == cmm_page_list)
				cmm_page_list = npa;
			if (pa_last)
				pa_last->next = npa;
			FUNC3((unsigned long) pa_curr);
			freed++;
			pa_curr = npa;
		}

		pa_last = pa_curr;
		pa_curr = pa_curr->next;
	}

	FUNC8(&cmm_lock);
	FUNC2("Released %ld pages in the search range.\n", freed);

	return 0;
}