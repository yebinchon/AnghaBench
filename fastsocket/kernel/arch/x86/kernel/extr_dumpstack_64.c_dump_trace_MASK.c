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
struct thread_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stacktrace_ops {scalar_t__ (* stack ) (void*,char*) ;unsigned long (* walk_stack ) (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ;} ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int IRQ_STACK_SIZE ; 
 struct task_struct* current ; 
 unsigned long FUNC0 (unsigned long,unsigned long*,unsigned long*,unsigned long*) ; 
 unsigned int FUNC1 () ; 
 unsigned long* FUNC2 (unsigned int const,unsigned long,unsigned int*,char**) ; 
 scalar_t__ FUNC3 (unsigned long*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  irq_stack_ptr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (struct task_struct*,struct pt_regs*) ; 
 scalar_t__ FUNC7 (void*,char*) ; 
 unsigned long FUNC8 (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ; 
 scalar_t__ FUNC9 (void*,char*) ; 
 scalar_t__ FUNC10 (void*,char*) ; 
 unsigned long FUNC11 (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ; 
 scalar_t__ FUNC12 (void*,char*) ; 
 unsigned long FUNC13 (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ; 
 struct thread_info* FUNC14 (struct task_struct*) ; 

void FUNC15(struct task_struct *task, struct pt_regs *regs,
		unsigned long *stack,
		const struct stacktrace_ops *ops, void *data)
{
	const unsigned cpu = FUNC1();
	unsigned long *irq_stack_end =
		(unsigned long *)FUNC4(irq_stack_ptr, cpu);
	unsigned used = 0;
	struct thread_info *tinfo;
	int graph = 0;
	unsigned long bp;

	if (!task)
		task = current;

	if (!stack) {
		unsigned long dummy;
		stack = &dummy;
		if (task && task != current)
			stack = (unsigned long *)task->thread.sp;
	}

	bp = FUNC6(task, regs);
	/*
	 * Print function call entries in all stacks, starting at the
	 * current stack address. If the stacks consist of nested
	 * exceptions
	 */
	tinfo = FUNC14(task);
	for (;;) {
		char *id;
		unsigned long *estack_end;
		estack_end = FUNC2(cpu, (unsigned long)stack,
						&used, &id);

		if (estack_end) {
			if (ops->stack(data, id) < 0)
				break;

			bp = ops->walk_stack(tinfo, stack, bp, ops,
					     data, estack_end, &graph);
			ops->stack(data, "<EOE>");
			/*
			 * We link to the next stack via the
			 * second-to-last pointer (index -2 to end) in the
			 * exception stack:
			 */
			stack = (unsigned long *) estack_end[-2];
			continue;
		}
		if (irq_stack_end) {
			unsigned long *irq_stack;
			irq_stack = irq_stack_end -
				(IRQ_STACK_SIZE - 64) / sizeof(*irq_stack);

			if (FUNC3(stack, irq_stack, irq_stack_end)) {
				if (ops->stack(data, "IRQ") < 0)
					break;
				bp = ops->walk_stack(tinfo, stack, bp,
					ops, data, irq_stack_end, &graph);
				/*
				 * We link to the next stack (which would be
				 * the process stack normally) the last
				 * pointer (index -1 to end) in the IRQ stack:
				 */
				stack = (unsigned long *) (irq_stack_end[-1]);
				bp = FUNC0(bp, stack, irq_stack,
						       irq_stack_end);
				irq_stack_end = NULL;
				ops->stack(data, "EOI");
				continue;
			}
		}
		break;
	}

	/*
	 * This handles the process stack:
	 */
	bp = ops->walk_stack(tinfo, stack, bp, ops, data, NULL, &graph);
	FUNC5();
}