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
struct memory_isolate_notify {unsigned long nr_pages; int /*<<< orphan*/  pages_found; int /*<<< orphan*/  start_pfn; } ;
struct cmm_page_array {unsigned long index; unsigned long* page; struct cmm_page_array* next; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  cmm_lock ; 
 struct cmm_page_array* cmm_page_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC3(void *arg)
{
	struct memory_isolate_notify *marg = arg;
	struct cmm_page_array *pa;
	unsigned long start = (unsigned long)FUNC0(marg->start_pfn);
	unsigned long end = start + (marg->nr_pages << PAGE_SHIFT);
	unsigned long idx;

	FUNC1(&cmm_lock);
	pa = cmm_page_list;
	while (pa) {
		if ((unsigned long)pa >= start && (unsigned long)pa < end)
			marg->pages_found++;
		for (idx = 0; idx < pa->index; idx++)
			if (pa->page[idx] >= start && pa->page[idx] < end)
				marg->pages_found++;
		pa = pa->next;
	}
	FUNC2(&cmm_lock);
	return 0;
}