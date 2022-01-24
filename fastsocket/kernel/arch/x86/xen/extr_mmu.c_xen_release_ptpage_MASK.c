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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  MMUEXT_UNPIN_TABLE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned int PT_PTE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ USE_SPLIT_PTLOCKS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(unsigned long pfn, unsigned level)
{
	struct page *page = FUNC6(pfn);

	if (FUNC3(page)) {
		if (!FUNC2(page)) {
			if (level == PT_PTE && USE_SPLIT_PTLOCKS)
				FUNC7(MMUEXT_UNPIN_TABLE, pfn);
			FUNC5(FUNC4(FUNC1(pfn)));
		}
		FUNC0(page);
	}
}