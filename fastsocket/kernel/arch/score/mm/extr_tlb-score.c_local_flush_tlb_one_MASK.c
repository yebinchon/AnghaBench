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
 int KSEG1 ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 

void FUNC9(unsigned long page)
{
	unsigned long flags;
	int oldpid, idx;

	FUNC2(flags);
	oldpid = FUNC4();
	page &= (PAGE_MASK << 1);
	FUNC5(page);
	FUNC0();
	FUNC6();
	idx = FUNC8();
	FUNC3(0);
	if (idx >= 0) {
		/* Make sure all entries differ. */
		FUNC5(KSEG1);
		FUNC0();
		FUNC7();
	}
	FUNC5(oldpid);
	FUNC1(flags);
}