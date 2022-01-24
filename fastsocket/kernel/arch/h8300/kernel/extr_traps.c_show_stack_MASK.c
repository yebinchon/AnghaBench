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
 scalar_t__ FUNC0 (unsigned long) ; 
 int kstack_depth_to_print ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(struct task_struct *task, unsigned long *esp)
{
	unsigned long *stack,  addr;
	int i;

	if (esp == NULL)
		esp = (unsigned long *) &esp;

	stack = esp;

	FUNC1("Stack from %08lx:", (unsigned long)stack);
	for (i = 0; i < kstack_depth_to_print; i++) {
		if (((unsigned long)stack & (THREAD_SIZE - 1)) == 0)
			break;
		if (i % 8 == 0)
			FUNC1("\n       ");
		FUNC1(" %08lx", *stack++);
	}

	FUNC1("\nCall Trace:");
	i = 0;
	stack = esp;
	while (((unsigned long)stack & (THREAD_SIZE - 1)) != 0) {
		addr = *stack++;
		/*
		 * If the address is either in the text segment of the
		 * kernel, or in the region which contains vmalloc'ed
		 * memory, it *may* be the address of a calling
		 * routine; if so, print it so that someone tracing
		 * down the cause of the crash will be able to figure
		 * out the call path that was taken.
		 */
		if (FUNC0(addr)) {
			if (i % 4 == 0)
				FUNC1("\n       ");
			FUNC1(" [<%08lx>]", addr);
			i++;
		}
	}
	FUNC1("\n");
}