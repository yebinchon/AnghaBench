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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FLUSH_ITLB ; 
 int PAGE_MASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(unsigned long page)
{
	unsigned long flags;
	int oldpid, idx;

	FUNC0(flags);
	oldpid = FUNC4();
	page &= (PAGE_MASK << 1);
	FUNC10(page);
	FUNC3();
	FUNC6();
	FUNC7();
	idx = FUNC5();
	FUNC11(0);
	FUNC12(0);
	if (idx >= 0) {
		/* Make sure all entries differ. */
		FUNC10(FUNC2(idx));
		FUNC3();
		FUNC8();
		FUNC9();
	}
	FUNC10(oldpid);
	FLUSH_ITLB;
	FUNC1(flags);
}