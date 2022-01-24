#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int* regs; int cp0_epc; } ;
struct TYPE_8__ {int sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct k_sigaction {TYPE_3__ sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_7__ {TYPE_1__* abi; } ;
struct TYPE_10__ {TYPE_4__* sighand; int /*<<< orphan*/  blocked; TYPE_2__ thread; } ;
struct TYPE_9__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_6__ {int (* setup_rt_frame ) (struct k_sigaction*,struct pt_regs*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int (* setup_frame ) (struct k_sigaction*,struct pt_regs*,unsigned long,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 void* EINTR ; 
#define  ERESTARTNOHAND 131 
#define  ERESTARTNOINTR 130 
#define  ERESTARTSYS 129 
#define  ERESTART_RESTARTBLOCK 128 
 int SA_NODEFER ; 
 int SA_RESTART ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct k_sigaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct k_sigaction*,struct pt_regs*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct k_sigaction*,struct pt_regs*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(unsigned long sig, siginfo_t *info,
	struct k_sigaction *ka, sigset_t *oldset, struct pt_regs *regs)
{
	int ret;

	switch(regs->regs[0]) {
	case ERESTART_RESTARTBLOCK:
	case ERESTARTNOHAND:
		regs->regs[2] = EINTR;
		break;
	case ERESTARTSYS:
		if (!(ka->sa.sa_flags & SA_RESTART)) {
			regs->regs[2] = EINTR;
			break;
		}
	/* fallthrough */
	case ERESTARTNOINTR:		/* Userland will reload $v0.  */
		regs->regs[7] = regs->regs[26];
		regs->cp0_epc -= 8;
	}

	regs->regs[0] = 0;		/* Don't deal with this again.  */

	if (FUNC1(ka))
		ret = current->thread.abi->setup_rt_frame(ka, regs, sig, oldset, info);
	else
		ret = current->thread.abi->setup_frame(ka, regs, sig, oldset);

	FUNC4(&current->sighand->siglock);
	FUNC3(&current->blocked, &current->blocked, &ka->sa.sa_mask);
	if (!(ka->sa.sa_flags & SA_NODEFER))
		FUNC2(&current->blocked, sig);
	FUNC0();
	FUNC5(&current->sighand->siglock);

	return ret;
}