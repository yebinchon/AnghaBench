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
struct TYPE_2__ {long error_code; int trap_no; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct pt_regs*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,struct task_struct*) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

__attribute__((used)) static __inline__ void FUNC5(int trapnr, int signr, const char * str,
	struct pt_regs * regs, long error_code, siginfo_t *info)
{
	if (FUNC4(regs)) {
		/* trap_signal */
		struct task_struct *tsk = current;
		tsk->thread.error_code = error_code;
		tsk->thread.trap_no = trapnr;
		if (info)
			FUNC3(signr, info, tsk);
		else
			FUNC2(signr, tsk);
		return;
	} else {
		/* kernel_trap */
		if (!FUNC1(regs))
			FUNC0(str, regs, error_code);
		return;
	}
}