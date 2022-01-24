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

/* Variables and functions */
 int kstack_depth_to_print ; 
 scalar_t__ FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long*) ; 
 unsigned long* FUNC3 (struct task_struct*) ; 

void FUNC4(struct task_struct *task, unsigned long *sp)
{
	int i = 0;
	unsigned long *stack;

	if (!sp)
		sp = FUNC3(task);
 	stack = sp;

	FUNC1("\nStack: ");

	for (i = 0; i < kstack_depth_to_print; i++) {
		if (FUNC0(sp))
			break;
		if (i && ((i % 8) == 0))
			FUNC1("\n       ");
		FUNC1("%08lx ", *sp++);
	}
	FUNC1("\n");
	FUNC2(task, stack);
}