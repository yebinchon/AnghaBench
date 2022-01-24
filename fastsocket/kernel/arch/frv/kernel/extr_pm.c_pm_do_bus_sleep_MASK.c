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
 int /*<<< orphan*/  HSR0_PDM_BUS_SLEEP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
	FUNC5();

	/*
         * Here is where we need some platform-dependent setup
	 * of the interrupt state so that appropriate wakeup
	 * sources are allowed and all others are masked.
	 */
	FUNC2();

	FUNC3(0xa1);

	/* go zzz
	 *
	 * This is in a loop in case power switch shares an irq with other
	 * devices. The wake_check() tells us if we need to finish waking
	 * or go back to sleep.
	 */
	do {
		FUNC4(HSR0_PDM_BUS_SLEEP);
	} while (&__power_switch_wake_check && !FUNC0());

	FUNC3(0xa2);

	/*
         * Here is where we need some platform-dependent restore
	 * of the interrupt state prior to being called.
	 */
	FUNC1();

	FUNC6();

	return 0;
}