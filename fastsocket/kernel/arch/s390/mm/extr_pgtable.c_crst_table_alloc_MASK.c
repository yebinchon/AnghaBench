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
struct page {int /*<<< orphan*/  lru; scalar_t__ index; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  crst_list; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_ORDER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

unsigned long *FUNC6(struct mm_struct *mm, int noexec)
{
	struct page *page = FUNC1(GFP_KERNEL, ALLOC_ORDER);

	if (!page)
		return NULL;
	page->index = 0;
	if (noexec) {
		struct page *shadow = FUNC1(GFP_KERNEL, ALLOC_ORDER);
		if (!shadow) {
			FUNC0(page, ALLOC_ORDER);
			return NULL;
		}
		page->index = FUNC3(shadow);
	}
	FUNC4(&mm->context.list_lock);
	FUNC2(&page->lru, &mm->context.crst_list);
	FUNC5(&mm->context.list_lock);
	return (unsigned long *) FUNC3(page);
}