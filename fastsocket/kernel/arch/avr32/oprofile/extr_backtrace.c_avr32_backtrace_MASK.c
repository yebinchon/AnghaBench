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
struct pt_regs {scalar_t__ r7; } ;
struct frame_head {struct frame_head* fp; int /*<<< orphan*/  lr; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 struct frame_head* FUNC0 (struct frame_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs* const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC5(struct pt_regs * const regs, unsigned int depth)
{
	/* Get first frame pointer */
	struct frame_head *head = (struct frame_head *)(regs->r7);

	if (!FUNC3(regs)) {
#ifdef CONFIG_FRAME_POINTER
		/*
		 * Traverse the kernel stack from frame to frame up to
		 * "depth" steps.
		 */
		while (depth-- && valid_stack_ptr(task_thread_info(current),
						  (unsigned long)head)) {
			oprofile_add_trace(head->lr);
			if (head->fp <= head)
				break;
			head = head->fp;
		}
#endif
	} else {
		/* Assume we have frame pointers in user mode process */
		while (depth-- && head)
			head = FUNC0(head);
	}
}