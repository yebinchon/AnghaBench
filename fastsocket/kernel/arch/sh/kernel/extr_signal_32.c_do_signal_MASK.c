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
struct pt_regs {scalar_t__ tra; unsigned int* regs; scalar_t__ pc; } ;
struct k_sigaction {int /*<<< orphan*/  sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_2__ {int /*<<< orphan*/  saved_sigmask; int /*<<< orphan*/  blocked; } ;

/* Variables and functions */
 unsigned int ERESTARTNOHAND ; 
 unsigned int ERESTARTNOINTR ; 
 unsigned int ERESTARTSYS ; 
 unsigned int ERESTART_RESTARTBLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  TIF_RESTORE_SIGMASK ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 unsigned int __NR_restart_syscall ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* current ; 
 int FUNC2 (int /*<<< orphan*/ *,struct k_sigaction*,struct pt_regs*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pt_regs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct pt_regs*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,struct k_sigaction*,struct pt_regs*,scalar_t__) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC11(struct pt_regs *regs, unsigned int save_r0)
{
	siginfo_t info;
	int signr;
	struct k_sigaction ka;
	sigset_t *oldset;

	/*
	 * We want the common case to go fast, which
	 * is why we may in certain cases get here from
	 * kernel mode. Just return without doing anything
	 * if so.
	 */
	if (!FUNC10(regs))
		return;

	if (FUNC9())
		goto no_signal;

	if (FUNC7(TIF_RESTORE_SIGMASK))
		oldset = &current->saved_sigmask;
	else
		oldset = &current->blocked;

	signr = FUNC2(&info, &ka, regs, NULL);
	if (signr > 0) {
		FUNC4(save_r0, regs, &ka.sa);

		/* Whee!  Actually deliver the signal.  */
		if (FUNC3(signr, &ka, &info, oldset,
				  regs, save_r0) == 0) {
			/* a signal was successfully delivered; the saved
			 * sigmask will have been stored in the signal frame,
			 * and will be restored by sigreturn, so we can simply
			 * clear the TIF_RESTORE_SIGMASK flag */
			if (FUNC7(TIF_RESTORE_SIGMASK))
				FUNC0(TIF_RESTORE_SIGMASK);

			FUNC8(signr, &info, &ka, regs,
					FUNC7(TIF_SINGLESTEP));
		}

		return;
	}

no_signal:
	/* Did we come from a system call? */
	if (regs->tra >= 0) {
		/* Restart the system call - no handlers present */
		if (regs->regs[0] == -ERESTARTNOHAND ||
		    regs->regs[0] == -ERESTARTSYS ||
		    regs->regs[0] == -ERESTARTNOINTR) {
			regs->regs[0] = save_r0;
			regs->pc -= FUNC5(FUNC1(regs->pc - 4));
		} else if (regs->regs[0] == -ERESTART_RESTARTBLOCK) {
			regs->pc -= FUNC5(FUNC1(regs->pc - 4));
			regs->regs[3] = __NR_restart_syscall;
		}
	}

	/* if there's no signal to deliver, we just put the saved sigmask
	 * back */
	if (FUNC7(TIF_RESTORE_SIGMASK)) {
		FUNC0(TIF_RESTORE_SIGMASK);
		FUNC6(SIG_SETMASK, &current->saved_sigmask, NULL);
	}
}