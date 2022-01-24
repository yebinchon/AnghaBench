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
struct page {int /*<<< orphan*/  lru; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_ORDER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct page* FUNC5 (unsigned long*) ; 

void FUNC6(struct mm_struct *mm, unsigned long *table)
{
	unsigned long *shadow = FUNC1(table);
	struct page *page = FUNC5(table);

	FUNC3(&mm->context.list_lock);
	FUNC2(&page->lru);
	FUNC4(&mm->context.list_lock);
	if (shadow)
		FUNC0((unsigned long) shadow, ALLOC_ORDER);
	FUNC0((unsigned long) table, ALLOC_ORDER);
}