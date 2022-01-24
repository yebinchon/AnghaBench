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
struct cmm_page_array {size_t index; unsigned long* pages; struct cmm_page_array* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmm_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC3(long nr, long *counter, struct cmm_page_array **list)
{
	struct cmm_page_array *pa;
	unsigned long addr;

	FUNC1(&cmm_lock);
	pa = *list;
	while (nr) {
		if (!pa || pa->index <= 0)
			break;
		addr = pa->pages[--pa->index];
		if (pa->index == 0) {
			pa = pa->next;
			FUNC0((unsigned long) *list);
			*list = pa;
		}
		FUNC0(addr);
		(*counter)--;
		nr--;
	}
	FUNC2(&cmm_lock);
	return nr;
}