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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int sa_flags; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 int EFAULT ; 
 int SA_SIGINFO ; 
 int FUNC0 (int,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct k_sigaction*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int FUNC3 (int,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pt_regs*) ; 
 scalar_t__ is_ia32 ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(int sig, struct k_sigaction *ka, siginfo_t *info,
	       sigset_t *set, struct pt_regs *regs)
{
	int usig = FUNC4(sig);
	int ret;

	/* Set up the stack frame */
	if (is_ia32) {
		if (ka->sa.sa_flags & SA_SIGINFO)
			ret = FUNC3(usig, ka, info, set, regs);
		else
			ret = FUNC2(usig, ka, set, regs);
	} else
		ret = FUNC0(sig, ka, info, set, regs);

	if (ret) {
		FUNC1(sig, current);
		return -EFAULT;
	}

	return ret;
}