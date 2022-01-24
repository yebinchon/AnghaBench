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
struct page_list {int /*<<< orphan*/  page; struct page_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page_list*) ; 

__attribute__((used)) static void FUNC3(struct page_list *list)
{
	while (list) {
		struct page_list *pl = list;

		list = pl->next;
		FUNC0(!pl->page);
		FUNC1(pl->page);
		FUNC2(pl);
	}
}