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
struct pt_regs {int dummy; } ;
struct TYPE_4__ {int sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_6__ {TYPE_2__* sighand; int /*<<< orphan*/  blocked; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int SA_NODEFER ; 
 int SA_ONESHOT ; 
 int SA_SIGINFO ; 
 int /*<<< orphan*/  SIG_DFL ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned long,struct k_sigaction*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int FUNC2 (unsigned long,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(unsigned long sig, siginfo_t *info, struct k_sigaction *ka,
		sigset_t *oldset, struct pt_regs * regs)
{
	int ret;

	/* Set up the stack frame */
	if (ka->sa.sa_flags & SA_SIGINFO)
		ret = FUNC2(sig, ka, info, oldset, regs);
	else
		ret = FUNC1(sig, ka, oldset, regs);

	if (ka->sa.sa_flags & SA_ONESHOT)
		ka->sa.sa_handler = SIG_DFL;

	if (ret == 0) {
		FUNC5(&current->sighand->siglock);
		FUNC4(&current->blocked,&current->blocked,&ka->sa.sa_mask);
		if (!(ka->sa.sa_flags & SA_NODEFER))
			FUNC3(&current->blocked,sig);
		FUNC0();
		FUNC6(&current->sighand->siglock);
	}

	return ret;
}