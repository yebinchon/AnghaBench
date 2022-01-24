#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {scalar_t__ orig_p0; } ;
struct TYPE_4__ {int sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_6__ {TYPE_2__* sighand; int /*<<< orphan*/  blocked; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int SA_NODEFER ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,struct k_sigaction*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(int sig, siginfo_t *info, struct k_sigaction *ka,
	      sigset_t *oldset, struct pt_regs *regs)
{
	int ret;

	/* are we from a system call? to see pt_regs->orig_p0 */
	if (regs->orig_p0 >= 0)
		/* If so, check system call restarting.. */
		FUNC0(regs, ka, 1);

	/* set up the stack frame */
	ret = FUNC2(sig, ka, info, oldset, regs);

	if (ret == 0) {
		FUNC5(&current->sighand->siglock);
		FUNC4(&current->blocked, &current->blocked,
			  &ka->sa.sa_mask);
		if (!(ka->sa.sa_flags & SA_NODEFER))
			FUNC3(&current->blocked, sig);
		FUNC1();
		FUNC6(&current->sighand->siglock);
	}
	return ret;
}