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
struct thread_info {unsigned long ksp; } ;
struct task_struct {int dummy; } ;
struct sparc_stackf {unsigned long callers_pc; scalar_t__ fp; } ;
struct pt_regs {int tstate; unsigned long tpc; unsigned long* u_regs; } ;

/* Variables and functions */
 unsigned long STACK_BIAS ; 
 int TSTATE_PRIV ; 
 size_t UREG_I6 ; 
 struct task_struct* current ; 
 struct thread_info* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct thread_info*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct thread_info* FUNC5 (struct task_struct*) ; 

void FUNC6(struct task_struct *tsk, unsigned long *_ksp)
{
	unsigned long fp, thread_base, ksp;
	struct thread_info *tp;
	int count = 0;

	ksp = (unsigned long) _ksp;
	if (!tsk)
		tsk = current;
	tp = FUNC5(tsk);
	if (ksp == 0UL) {
		if (tsk == current)
			asm("mov %%fp, %0" : "=r" (ksp));
		else
			ksp = tp->ksp;
	}
	if (tp == FUNC0())
		FUNC1();

	fp = ksp + STACK_BIAS;
	thread_base = (unsigned long) tp;

	FUNC4("Call Trace:\n");
	do {
		struct sparc_stackf *sf;
		struct pt_regs *regs;
		unsigned long pc;

		if (!FUNC3(tp, fp))
			break;
		sf = (struct sparc_stackf *) fp;
		regs = (struct pt_regs *) (sf + 1);

		if (FUNC2(tp, regs)) {
			if (!(regs->tstate & TSTATE_PRIV))
				break;
			pc = regs->tpc;
			fp = regs->u_regs[UREG_I6] + STACK_BIAS;
		} else {
			pc = sf->callers_pc;
			fp = (unsigned long)sf->fp + STACK_BIAS;
		}

		FUNC4(" [%016lx] %pS\n", pc, (void *) pc);
	} while (++count < 16);
}