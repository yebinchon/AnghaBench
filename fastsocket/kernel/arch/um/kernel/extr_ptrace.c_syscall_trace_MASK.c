#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uml_pt_regs {int dummy; } ;
struct TYPE_4__ {int ptrace; scalar_t__ exit_code; int /*<<< orphan*/  audit_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_AUDIT_ARCH ; 
 int PT_DTRACE ; 
 int PT_PTRACED ; 
 int PT_TRACESYSGOOD ; 
 int SIGTRAP ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct uml_pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(struct uml_pt_regs *regs, int entryexit)
{
	int is_singlestep = (current->ptrace & PT_DTRACE) && entryexit;
	int tracesysgood;

	if (FUNC14(current->audit_context)) {
		if (!entryexit)
			FUNC7(HOST_AUDIT_ARCH,
					    FUNC5(regs),
					    FUNC1(regs),
					    FUNC2(regs),
					    FUNC3(regs),
					    FUNC4(regs));
		else FUNC8(FUNC0(FUNC6(regs)),
					FUNC6(regs));
	}

	/* Fake a debug trap */
	if (is_singlestep)
		FUNC11(current, regs, 0);

	if (!FUNC13(TIF_SYSCALL_TRACE))
		return;

	if (!(current->ptrace & PT_PTRACED))
		return;

	/*
	 * the 0x80 provides a way for the tracing parent to distinguish
	 * between a syscall stop and SIGTRAP delivery
	 */
	tracesysgood = (current->ptrace & PT_TRACESYSGOOD);
	FUNC9(SIGTRAP | (tracesysgood ? 0x80 : 0));

	if (entryexit) /* force do_signal() --> is_syscall() */
		FUNC12(TIF_SIGPENDING);

	/*
	 * this isn't the same as continuing with a signal, but it will do
	 * for normal use.  strace only continues with a signal if the
	 * stopping signal is not SIGTRAP.  -brl
	 */
	if (current->exit_code) {
		FUNC10(current->exit_code, current, 1);
		current->exit_code = 0;
	}
}