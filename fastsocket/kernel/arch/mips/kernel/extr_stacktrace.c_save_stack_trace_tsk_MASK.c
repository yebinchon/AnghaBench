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
struct TYPE_2__ {int /*<<< orphan*/  reg31; scalar_t__ reg29; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_trace {int /*<<< orphan*/  max_entries; scalar_t__ nr_entries; } ;
struct pt_regs {int /*<<< orphan*/  cp0_epc; scalar_t__* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack_trace*,struct task_struct*,struct pt_regs*) ; 

void FUNC3(struct task_struct *tsk, struct stack_trace *trace)
{
	struct pt_regs dummyregs;
	struct pt_regs *regs = &dummyregs;

	FUNC0(trace->nr_entries || !trace->max_entries);

	if (tsk != current) {
		regs->regs[29] = tsk->thread.reg29;
		regs->regs[31] = 0;
		regs->cp0_epc = tsk->thread.reg31;
	} else
		FUNC1(regs);
	FUNC2(trace, tsk, regs);
}