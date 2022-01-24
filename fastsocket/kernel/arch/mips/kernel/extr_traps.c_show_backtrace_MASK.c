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
struct task_struct {int dummy; } ;
struct pt_regs {unsigned long* regs; unsigned long cp0_epc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ raw_show_trace ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (struct task_struct*,unsigned long*,unsigned long,unsigned long*) ; 

__attribute__((used)) static void FUNC5(struct task_struct *task, const struct pt_regs *regs)
{
	unsigned long sp = regs->regs[29];
	unsigned long ra = regs->regs[31];
	unsigned long pc = regs->cp0_epc;

	if (raw_show_trace || !FUNC0(pc)) {
		FUNC3(sp);
		return;
	}
	FUNC2("Call Trace:\n");
	do {
		FUNC1(pc);
		pc = FUNC4(task, &sp, pc, &ra);
	} while (pc);
	FUNC2("\n");
}