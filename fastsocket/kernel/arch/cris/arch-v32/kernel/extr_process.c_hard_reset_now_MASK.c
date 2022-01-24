#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int key; int cnt; int /*<<< orphan*/  cmd; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ reg_timer_rw_wd_ctrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  regi_timer0 ; 
 int /*<<< orphan*/  regk_timer_start ; 
 int /*<<< orphan*/  rw_wd_ctrl ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  timer ; 

void
FUNC5(void)
{
	/*
	 * Don't declare this variable elsewhere.  We don't want any other
	 * code to know about it than the watchdog handler in entry.S and
	 * this code, implementing hard reset through the watchdog.
	 */
#if defined(CONFIG_ETRAX_WATCHDOG)
	extern int cause_of_death;
#endif

	FUNC3("*** HARD RESET ***\n");
	FUNC2();

#if defined(CONFIG_ETRAX_WATCHDOG)
	cause_of_death = 0xbedead;
#else
{
	reg_timer_rw_wd_ctrl wd_ctrl = {0};

	FUNC4();

	wd_ctrl.key = 16;	/* Arbitrary key. */
	wd_ctrl.cnt = 1;	/* Minimum time. */
	wd_ctrl.cmd = regk_timer_start;

        FUNC1();
	FUNC0(timer, regi_timer0, rw_wd_ctrl, wd_ctrl);
}
#endif

	while (1)
		; /* Wait for reset. */
}