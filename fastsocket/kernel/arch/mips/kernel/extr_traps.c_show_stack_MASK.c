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
struct TYPE_2__ {unsigned long reg29; scalar_t__ reg31; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {unsigned long* regs; scalar_t__ cp0_epc; } ;

/* Variables and functions */
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct pt_regs*) ; 

void FUNC2(struct task_struct *task, unsigned long *sp)
{
	struct pt_regs regs;
	if (sp) {
		regs.regs[29] = (unsigned long)sp;
		regs.regs[31] = 0;
		regs.cp0_epc = 0;
	} else {
		if (task && task != current) {
			regs.regs[29] = task->thread.reg29;
			regs.regs[31] = 0;
			regs.cp0_epc = task->thread.reg31;
		} else {
			FUNC0(&regs);
		}
	}
	FUNC1(task, &regs);
}