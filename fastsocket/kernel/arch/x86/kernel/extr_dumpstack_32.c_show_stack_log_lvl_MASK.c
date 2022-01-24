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
struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int STACKSLOTS_PER_LINE ; 
 int kstack_depth_to_print ; 
 scalar_t__ FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct pt_regs*,unsigned long*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(struct task_struct *task, struct pt_regs *regs,
		   unsigned long *sp, char *log_lvl)
{
	unsigned long *stack;
	int i;

	if (sp == NULL) {
		if (task)
			sp = (unsigned long *)task->thread.sp;
		else
			sp = (unsigned long *)&sp;
	}

	stack = sp;
	for (i = 0; i < kstack_depth_to_print; i++) {
		if (FUNC0(stack))
			break;
		if (i && ((i % STACKSLOTS_PER_LINE) == 0))
			FUNC1("\n%s", log_lvl);
		FUNC1(" %08lx", *stack++);
		FUNC3();
	}
	FUNC1("\n");
	FUNC2(task, regs, sp, log_lvl);
}