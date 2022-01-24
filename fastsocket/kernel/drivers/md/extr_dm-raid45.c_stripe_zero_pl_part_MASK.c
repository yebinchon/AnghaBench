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
struct stripe {int dummy; } ;
struct page_list {struct page_list* next; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*,int) ; 
 unsigned int SECTORS_PER_PAGE ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct page_list* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct stripe *stripe, int p,
				unsigned start, unsigned count)
{
	unsigned o = start / SECTORS_PER_PAGE, pages = FUNC2(count);
	/* Get offset into the page_list. */
	struct page_list *pl = FUNC5(FUNC1(stripe, p), o);

	FUNC0(!pl);
	while (pl && pages--) {
		FUNC0(!pl->page);
		FUNC3(FUNC4(pl->page), 0, PAGE_SIZE);
		pl = pl->next;
	}
}