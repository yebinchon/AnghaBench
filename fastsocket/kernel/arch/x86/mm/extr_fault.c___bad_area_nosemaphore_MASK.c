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
struct TYPE_2__ {unsigned long cr2; unsigned long error_code; int trap_no; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned long PF_USER ; 
 int /*<<< orphan*/  SIGSEGV ; 
 unsigned long TASK_SIZE ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned long,struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pt_regs*,unsigned long) ; 
 scalar_t__ FUNC2 (struct pt_regs*,unsigned long) ; 
 scalar_t__ FUNC3 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*,unsigned long,unsigned long,struct task_struct*) ; 
 int /*<<< orphan*/  show_unhandled_signals ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct pt_regs *regs, unsigned long error_code,
		       unsigned long address, int si_code)
{
	struct task_struct *tsk = current;

	/* User mode accesses just cause a SIGSEGV */
	if (error_code & PF_USER) {
		/*
		 * It's possible to have interrupts off here:
		 */
		FUNC4();

		/*
		 * Valid to do another page fault here because this one came
		 * from user space:
		 */
		if (FUNC3(regs, error_code, address))
			return;

		if (FUNC1(regs, address))
			return;

		if (FUNC7(show_unhandled_signals))
			FUNC6(regs, error_code, address, tsk);

		/* Kernel addresses are always protection faults: */
		tsk->thread.cr2		= address;
		tsk->thread.error_code	= error_code | (address >= TASK_SIZE);
		tsk->thread.trap_no	= 14;

		FUNC0(SIGSEGV, si_code, address, tsk, 0);

		return;
	}

	if (FUNC2(regs, address))
		return;

	FUNC5(regs, error_code, address);
}