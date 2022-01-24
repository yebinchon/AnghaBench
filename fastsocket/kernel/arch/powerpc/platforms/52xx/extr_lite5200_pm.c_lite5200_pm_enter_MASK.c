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
typedef  scalar_t__ suspend_state_t ;

/* Variables and functions */
 scalar_t__ PM_SUSPEND_STANDBY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  mbar ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  sram ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(suspend_state_t state)
{
	/* deep sleep? let mpc52xx code handle that */
	if (state == PM_SUSPEND_STANDBY) {
		return FUNC5(state);
	}

	FUNC4();

	/* effectively save FP regs */
	FUNC0();

	FUNC2(sram, mbar);

	FUNC3();

	/* restart jiffies */
	FUNC6();

	FUNC1(mbar);
	return 0;
}