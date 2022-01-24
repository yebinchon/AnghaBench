#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_flags; int /*<<< orphan*/  ss_sp; } ;
struct TYPE_10__ {int /*<<< orphan*/  uc_sigmask; TYPE_2__ uc_stack; int /*<<< orphan*/  uc_link; int /*<<< orphan*/  uc_flags; } ;
struct rt_sigframe {TYPE_3__ uc; int /*<<< orphan*/  info; scalar_t__ retcode; } ;
struct pt_regs {unsigned long* areg; int depc; int /*<<< orphan*/  pc; } ;
struct TYPE_11__ {int sa_flags; scalar_t__ sa_handler; scalar_t__ sa_restorer; } ;
struct k_sigaction {TYPE_4__ sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_13__ {TYPE_1__* exec_domain; } ;
struct TYPE_12__ {unsigned long sas_ss_sp; unsigned long sas_ss_size; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct TYPE_8__ {int* signal_invmap; } ;

/* Variables and functions */
 int SA_ONSTACK ; 
 int SA_RESTORER ; 
 int SA_SIGINFO ; 
 int SIGSEGV ; 
 scalar_t__ SIG_DFL ; 
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rt_sigframe*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* current ; 
 TYPE_6__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_5__*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct rt_sigframe*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct rt_sigframe*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC13 (struct pt_regs*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC14(int sig, struct k_sigaction *ka, siginfo_t *info,
			sigset_t *set, struct pt_regs *regs)
{
	struct rt_sigframe *frame;
	int err = 0;
	int signal;
	unsigned long sp, ra;

	sp = regs->areg[1];

	if ((ka->sa.sa_flags & SA_ONSTACK) != 0 && ! FUNC7(sp)) {
		sp = current->sas_ss_sp + current->sas_ss_size;
	}

	frame = (void *)((sp - sizeof(*frame)) & -16ul);

	if (regs->depc > 64)
		FUNC8 ("Double exception sys_sigreturn\n");

	if (!FUNC2(VERIFY_WRITE, frame, sizeof(*frame))) {
		goto give_sigsegv;
	}

	signal = FUNC4()->exec_domain
		&& FUNC4()->exec_domain->signal_invmap
		&& sig < 32
		? FUNC4()->exec_domain->signal_invmap[sig]
		: sig;

	if (ka->sa.sa_flags & SA_SIGINFO) {
		err |= FUNC3(&frame->info, info);
	}

	/* Create the user context.  */

	err |= FUNC1(0, &frame->uc.uc_flags);
	err |= FUNC1(0, &frame->uc.uc_link);
	err |= FUNC1((void *)current->sas_ss_sp,
			  &frame->uc.uc_stack.ss_sp);
	err |= FUNC1(FUNC10(regs->areg[1]),
			  &frame->uc.uc_stack.ss_flags);
	err |= FUNC1(current->sas_ss_size, &frame->uc.uc_stack.ss_size);
	err |= FUNC12(frame, regs);
	err |= FUNC0(&frame->uc.uc_sigmask, set, sizeof(*set));

	if (ka->sa.sa_flags & SA_RESTORER) {
		ra = (unsigned long)ka->sa.sa_restorer;
	} else {

		/* Create sys_rt_sigreturn syscall in stack frame */

		err |= FUNC6(frame->retcode);

		if (err) {
			goto give_sigsegv;
		}
		ra = (unsigned long) frame->retcode;
	}

	/* 
	 * Create signal handler execution context.
	 * Return context not modified until this point.
	 */

	/* Set up registers for signal handler */
	FUNC13(regs, (unsigned long) ka->sa.sa_handler, 
		     (unsigned long) frame);

	/* Set up a stack frame for a call4
	 * Note: PS.CALLINC is set to one by start_thread
	 */
	regs->areg[4] = (((unsigned long) ra) & 0x3fffffff) | 0x40000000;
	regs->areg[6] = (unsigned long) signal;
	regs->areg[7] = (unsigned long) &frame->info;
	regs->areg[8] = (unsigned long) &frame->uc;

	/* Set access mode to USER_DS.  Nomenclature is outdated, but
	 * functionality is used in uaccess.h
	 */
	FUNC11(USER_DS);

#if DEBUG_SIG
	printk("SIG rt deliver (%s:%d): signal=%d sp=%p pc=%08x\n",
		current->comm, current->pid, signal, frame, regs->pc);
#endif

	return;

give_sigsegv:
	if (sig == SIGSEGV)
		ka->sa.sa_handler = SIG_DFL;
	FUNC5(SIGSEGV, current);
}