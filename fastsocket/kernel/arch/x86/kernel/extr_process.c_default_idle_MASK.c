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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_CSTATE ; 
 int /*<<< orphan*/  TS_POLLING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	if (FUNC2()) {
		FUNC8(POWER_CSTATE, 1, FUNC7());
		FUNC1()->status &= ~TS_POLLING;
		/*
		 * TS_POLLING-cleared state must be visible before we
		 * test NEED_RESCHED:
		 */
		FUNC6();

		if (!FUNC4())
			FUNC5();	/* enables interrupts racelessly */
		else
			FUNC3();
		FUNC1()->status |= TS_POLLING;
	} else {
		FUNC3();
		/* loop is done by the caller */
		FUNC0();
	}
}