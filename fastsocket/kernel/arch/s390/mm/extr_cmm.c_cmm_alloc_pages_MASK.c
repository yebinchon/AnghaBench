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
struct cmm_page_array {scalar_t__ index; unsigned long* pages; struct cmm_page_array* next; } ;

/* Variables and functions */
 scalar_t__ CMM_NR_PAGES ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmm_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC5(long nr, long *counter, struct cmm_page_array **list)
{
	struct cmm_page_array *pa, *npa;
	unsigned long addr;

	while (nr) {
		addr = FUNC0(GFP_NOIO);
		if (!addr)
			break;
		FUNC3(&cmm_lock);
		pa = *list;
		if (!pa || pa->index >= CMM_NR_PAGES) {
			/* Need a new page for the page list. */
			FUNC4(&cmm_lock);
			npa = (struct cmm_page_array *)
				FUNC0(GFP_NOIO);
			if (!npa) {
				FUNC2(addr);
				break;
			}
			FUNC3(&cmm_lock);
			pa = *list;
			if (!pa || pa->index >= CMM_NR_PAGES) {
				npa->next = pa;
				npa->index = 0;
				pa = npa;
				*list = pa;
			} else
				FUNC2((unsigned long) npa);
		}
		FUNC1(addr >> PAGE_SHIFT, 1);
		pa->pages[pa->index++] = addr;
		(*counter)++;
		FUNC4(&cmm_lock);
		nr--;
	}
	return nr;
}