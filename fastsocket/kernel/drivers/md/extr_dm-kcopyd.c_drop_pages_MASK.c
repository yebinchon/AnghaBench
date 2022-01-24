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
struct page_list {struct page_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_list*) ; 

__attribute__((used)) static void FUNC1(struct page_list *pl)
{
	struct page_list *next;

	while (pl) {
		next = pl->next;
		FUNC0(pl);
		pl = next;
	}
}