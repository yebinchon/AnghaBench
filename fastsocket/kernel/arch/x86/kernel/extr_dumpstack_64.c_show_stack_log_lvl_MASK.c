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
 scalar_t__ IRQ_STACK_SIZE ; 
 int STACKSLOTS_PER_LINE ; 
 int THREAD_SIZE ; 
 int /*<<< orphan*/  irq_stack_ptr ; 
 int kstack_depth_to_print ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct pt_regs*,unsigned long*,char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(struct task_struct *task, struct pt_regs *regs,
		   unsigned long *sp, char *log_lvl)
{
	unsigned long *irq_stack_end;
	unsigned long *irq_stack;
	unsigned long *stack;
	int cpu;
	int i;

	FUNC1();
	cpu = FUNC5();

	irq_stack_end	= (unsigned long *)(FUNC0(irq_stack_ptr, cpu));
	irq_stack	= (unsigned long *)(FUNC0(irq_stack_ptr, cpu) - IRQ_STACK_SIZE);

	/*
	 * Debugging aid: "show_stack(NULL, NULL);" prints the
	 * back trace for this cpu:
	 */
	if (sp == NULL) {
		if (task)
			sp = (unsigned long *)task->thread.sp;
		else
			sp = (unsigned long *)&sp;
	}

	stack = sp;
	for (i = 0; i < kstack_depth_to_print; i++) {
		if (stack >= irq_stack && stack <= irq_stack_end) {
			if (stack == irq_stack_end) {
				stack = (unsigned long *) (irq_stack_end[-1]);
				FUNC3(" <EOI> ");
			}
		} else {
		if (((long) stack & (THREAD_SIZE-1)) == 0)
			break;
		}
		if (i && ((i % STACKSLOTS_PER_LINE) == 0))
			FUNC3("\n%s", log_lvl);
		FUNC3(" %016lx", *stack++);
		FUNC6();
	}
	FUNC2();

	FUNC3("\n");
	FUNC4(task, regs, sp, log_lvl);
}