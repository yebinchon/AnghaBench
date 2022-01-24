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
struct thread_info {int /*<<< orphan*/  addr_limit; } ;
struct TYPE_2__ {unsigned long sp; unsigned long pc; scalar_t__ ubc_pc; int /*<<< orphan*/  dsp_status; int /*<<< orphan*/  fpu; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {unsigned long* regs; unsigned long gbr; } ;

/* Variables and functions */
 unsigned long CLONE_SETTLS ; 
 int /*<<< orphan*/  KERNEL_DS ; 
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 scalar_t__ ret_from_fork ; 
 struct pt_regs* FUNC2 (struct task_struct*) ; 
 struct thread_info* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct pt_regs*) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 

int FUNC6(unsigned long clone_flags, unsigned long usp,
		unsigned long unused,
		struct task_struct *p, struct pt_regs *regs)
{
	struct thread_info *ti = FUNC3(p);
	struct pt_regs *childregs;
#if defined(CONFIG_SH_FPU) || defined(CONFIG_SH_DSP)
	struct task_struct *tsk = current;
#endif

#if defined(CONFIG_SH_FPU)
	unlazy_fpu(tsk, regs);
	p->thread.fpu = tsk->thread.fpu;
	copy_to_stopped_child_used_math(p);
#endif

#if defined(CONFIG_SH_DSP)
	if (is_dsp_enabled(tsk)) {
		/* We can use the __save_dsp or just copy the struct:
		 * __save_dsp(p);
		 * p->thread.dsp_status.status |= SR_DSP
		 */
		p->thread.dsp_status = tsk->thread.dsp_status;
	}
#endif

	childregs = FUNC2(p);
	*childregs = *regs;

	if (FUNC5(regs)) {
		childregs->regs[15] = usp;
		ti->addr_limit = USER_DS;
	} else {
		childregs->regs[15] = (unsigned long)childregs;
		ti->addr_limit = KERNEL_DS;
	}

	if (clone_flags & CLONE_SETTLS)
		childregs->gbr = childregs->regs[0];

	childregs->regs[0] = 0; /* Set return value for child */

	p->thread.sp = (unsigned long) childregs;
	p->thread.pc = (unsigned long) ret_from_fork;

	p->thread.ubc_pc = 0;

	return 0;
}