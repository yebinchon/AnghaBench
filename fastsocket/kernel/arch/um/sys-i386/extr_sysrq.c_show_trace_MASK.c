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
struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (struct thread_info*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct task_struct* task, unsigned long * stack)
{
	unsigned long ebp;
	struct thread_info *context;

	/* Turn this into BUG_ON if possible. */
	if (!stack) {
		stack = (unsigned long*) &stack;
		FUNC3("show_trace: got NULL stack, implicit assumption task == current");
		FUNC1(1);
	}

	if (!task)
		task = current;

	if (task != current) {
		ebp = (unsigned long) FUNC0(task);
	} else {
		asm ("movl %%ebp, %0" : "=r" (ebp) : );
	}

	context = (struct thread_info *)
		((unsigned long)stack & (~(THREAD_SIZE - 1)));
	FUNC2(context, stack, ebp);

	FUNC3("\n");
}