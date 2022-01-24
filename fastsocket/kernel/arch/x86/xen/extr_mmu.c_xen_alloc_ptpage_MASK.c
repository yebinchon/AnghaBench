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
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMUEXT_PIN_L1_TABLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned int PT_PTE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ USE_SPLIT_PTLOCKS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct page* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mm_struct *mm, unsigned long pfn, unsigned level)
{
	struct page *page = FUNC7(pfn);

	if (FUNC2(FUNC9(mm->pgd))) {
		FUNC3(page);

		if (!FUNC1(page)) {
			FUNC6(FUNC4(FUNC0((unsigned long)pfn)));
			if (level == PT_PTE && USE_SPLIT_PTLOCKS)
				FUNC8(MMUEXT_PIN_L1_TABLE, pfn);
		} else {
			/* make sure there are no stray mappings of
			   this page */
			FUNC5();
		}
	}
}