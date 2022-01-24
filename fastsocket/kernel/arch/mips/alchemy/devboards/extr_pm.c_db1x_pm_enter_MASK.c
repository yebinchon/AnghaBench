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
typedef  int /*<<< orphan*/  suspend_state_t ;

/* Variables and functions */
 int SYS_CNTRL_M20 ; 
 int /*<<< orphan*/  SYS_COUNTER_CNTRL ; 
 int /*<<< orphan*/  SYS_TOYMATCH2 ; 
 int /*<<< orphan*/  SYS_TOYREAD ; 
 int /*<<< orphan*/  SYS_WAKEMSK ; 
 int /*<<< orphan*/  SYS_WAKESRC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ db1x_pm_sleep_secs ; 
 scalar_t__ db1x_pm_wakemsk ; 

__attribute__((used)) static int FUNC5(suspend_state_t state)
{
	/* enable GPIO based wakeup */
	FUNC0();

	/* clear and setup wake cause and source */
	FUNC4(0, SYS_WAKEMSK);
	FUNC3();
	FUNC4(0, SYS_WAKESRC);
	FUNC3();

	FUNC4(db1x_pm_wakemsk, SYS_WAKEMSK);
	FUNC3();

	/* setup 1Hz-timer-based wakeup: wait for reg access */
	while (FUNC1(SYS_COUNTER_CNTRL) & SYS_CNTRL_M20)
		asm volatile ("nop");

	FUNC4(FUNC1(SYS_TOYREAD) + db1x_pm_sleep_secs, SYS_TOYMATCH2);
	FUNC3();

	/* wait for value to really hit the register */
	while (FUNC1(SYS_COUNTER_CNTRL) & SYS_CNTRL_M20)
		asm volatile ("nop");

	/* ...and now the sandman can come! */
	FUNC2();

	return 0;
}