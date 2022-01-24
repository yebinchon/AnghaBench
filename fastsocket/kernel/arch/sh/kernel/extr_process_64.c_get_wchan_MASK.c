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
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* current ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (struct task_struct*) ; 

unsigned long FUNC2(struct task_struct *p)
{
	unsigned long pc;

	if (!p || p == current || p->state == TASK_RUNNING)
		return 0;

	/*
	 * The same comment as on the Alpha applies here, too ...
	 */
	pc = FUNC1(p);

#ifdef CONFIG_FRAME_POINTER
	if (in_sh64_switch_to(pc)) {
		unsigned long schedule_fp;
		unsigned long sh64_switch_to_fp;
		unsigned long schedule_caller_pc;

		sh64_switch_to_fp = (long) p->thread.sp;
		/* r14 is saved at offset 4 in the sh64_switch_to frame */
		schedule_fp = *(unsigned long *) (long)(sh64_switch_to_fp + 4);

		/* and the caller of 'schedule' is (currently!) saved at offset 24
		   in the frame of schedule (from disasm) */
		schedule_caller_pc = *(unsigned long *) (long)(schedule_fp + 24);
		return schedule_caller_pc;
	}
#endif
	return pc;
}