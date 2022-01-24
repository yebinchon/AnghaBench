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
 int THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int kstack_depth_to_print ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(struct task_struct *task, unsigned long *sp)
{
	unsigned long *stack;
	int i;

	/*
	 * debugging aid: "show_stack(NULL);" prints the
	 * back trace for this cpu.
	 */
	if(sp==NULL)
		sp=(unsigned long*)&sp;

	stack = sp;
	for(i=0; i < kstack_depth_to_print; i++) {
		if (((long) stack & (THREAD_SIZE-1)) == 0)
			break;
		if (i && ((i % 4) == 0))
			FUNC1("\n       ");
		FUNC1("%016lx ", *stack++);
	}
	FUNC1("\n");
	FUNC0(sp);
}