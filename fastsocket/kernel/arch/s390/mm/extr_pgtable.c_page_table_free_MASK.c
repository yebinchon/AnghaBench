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
struct page {unsigned long flags; int /*<<< orphan*/  lru; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  pgtable_list; scalar_t__ has_pgste; scalar_t__ noexec; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int FRAG_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct page* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct mm_struct *mm, unsigned long *table)
{
	struct page *page;
	unsigned long bits;

	bits = (mm->context.noexec || mm->context.has_pgste) ? 3UL : 1UL;
	bits <<= (FUNC1(table) & (PAGE_SIZE - 1)) / 256 / sizeof(unsigned long);
	page = FUNC4(FUNC1(table) >> PAGE_SHIFT);
	FUNC6(&mm->context.list_lock);
	page->flags ^= bits;
	if (page->flags & FRAG_MASK) {
		/* Page now has some free pgtable fragments. */
		FUNC3(&page->lru, &mm->context.pgtable_list);
		page = NULL;
	} else
		/* All fragments of the 4K page have been freed. */
		FUNC2(&page->lru);
	FUNC7(&mm->context.list_lock);
	if (page) {
		FUNC5(page);
		FUNC0(page);
	}
}