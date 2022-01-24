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
struct pt_regs {int* gpr; } ;
struct TYPE_2__ {int /*<<< orphan*/  audit_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_ARCH_PPC ; 
 int /*<<< orphan*/  AUDIT_ARCH_PPC64 ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

long FUNC5(struct pt_regs *regs)
{
	long ret = 0;

	FUNC1(regs->gpr[0]);

	if (FUNC2(TIF_SYSCALL_TRACE) &&
	    FUNC3(regs))
		/*
		 * Tracing decided this syscall should not happen.
		 * We'll return a bogus call number to get an ENOSYS
		 * error, but leave the original number in regs->gpr[0].
		 */
		ret = -1L;

	if (FUNC4(current->audit_context)) {
#ifdef CONFIG_PPC64
		if (!test_thread_flag(TIF_32BIT))
			audit_syscall_entry(AUDIT_ARCH_PPC64,
					    regs->gpr[0],
					    regs->gpr[3], regs->gpr[4],
					    regs->gpr[5], regs->gpr[6]);
		else
#endif
			FUNC0(AUDIT_ARCH_PPC,
					    regs->gpr[0],
					    regs->gpr[3] & 0xffffffff,
					    regs->gpr[4] & 0xffffffff,
					    regs->gpr[5] & 0xffffffff,
					    regs->gpr[6] & 0xffffffff);
	}

	return ret ?: regs->gpr[0];
}