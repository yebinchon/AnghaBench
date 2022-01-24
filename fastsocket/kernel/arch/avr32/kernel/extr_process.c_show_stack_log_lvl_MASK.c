#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread_info {int dummy; } ;
struct TYPE_3__ {unsigned long ksp; } ;
struct TYPE_4__ {TYPE_1__ cpu_context; } ;
struct task_struct {TYPE_2__ thread; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ THREAD_SIZE ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,unsigned long*,struct pt_regs*,char const*) ; 
 struct thread_info* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct thread_info*,unsigned long) ; 

void FUNC4(struct task_struct *tsk, unsigned long sp,
			struct pt_regs *regs, const char *log_lvl)
{
	struct thread_info *tinfo;

	if (sp == 0) {
		if (tsk)
			sp = tsk->thread.cpu_context.ksp;
		else
			sp = (unsigned long)&tinfo;
	}
	if (!tsk)
		tsk = current;

	tinfo = FUNC2(tsk);

	if (FUNC3(tinfo, sp)) {
		FUNC0("Stack: ", log_lvl, sp,
			 THREAD_SIZE + (unsigned long)tinfo);
		FUNC1(tsk, (unsigned long *)sp, regs, log_lvl);
	}
}