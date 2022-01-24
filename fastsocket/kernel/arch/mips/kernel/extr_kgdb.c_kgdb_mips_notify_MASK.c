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
struct pt_regs {int cp0_cause; unsigned long cp0_epc; } ;
struct notifier_block {int dummy; } ;
struct die_args {struct pt_regs* regs; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ breakinst ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  kgdb_active ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  kgdb_setting_breakpoint ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC8(struct notifier_block *self, unsigned long cmd,
			    void *ptr)
{
	struct die_args *args = (struct die_args *)ptr;
	struct pt_regs *regs = args->regs;
	int trap = (regs->cp0_cause & 0x7c) >> 2;

	/* Userpace events, ignore. */
	if (FUNC7(regs))
		return NOTIFY_DONE;

	if (FUNC1(&kgdb_active) != -1)
		FUNC4(FUNC6(), regs);

	if (FUNC3(trap, FUNC2(trap), 0, regs))
		return NOTIFY_DONE;

	if (FUNC1(&kgdb_setting_breakpoint))
		if ((trap == 9) && (regs->cp0_epc == (unsigned long)breakinst))
			regs->cp0_epc += 4;

	/* In SMP mode, __flush_cache_all does IPI */
	FUNC5();
	FUNC0();

	return NOTIFY_STOP;
}