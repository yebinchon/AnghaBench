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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 scalar_t__ oops_in_progress ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct pt_regs*) ; 

void
FUNC7(const char *str, struct pt_regs *regs, long err)
{
	if (FUNC6(regs))
		return;

#ifdef CONFIG_ETRAX_WATCHDOG_NICE_DOGGY
	/*
	 * This printout might take too long and could trigger
	 * the watchdog normally. If NICE_DOGGY is set, simply
	 * stop the watchdog during the printout.
	 */
	stop_watchdog();
#endif

	FUNC1(regs);

	FUNC2("%s: %04lx\n", str, err & 0xffff);

	FUNC4(regs);

	oops_in_progress = 0;

#ifdef CONFIG_ETRAX_WATCHDOG_NICE_DOGGY
	reset_watchdog();
#endif
	FUNC0(SIGSEGV);
}