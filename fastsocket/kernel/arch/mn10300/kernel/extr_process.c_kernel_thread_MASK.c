#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pt_regs {unsigned long a2; unsigned long d2; unsigned long pc; int epsw; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 unsigned long CLONE_UNTRACED ; 
 unsigned long CLONE_VM ; 
 int EPSW_IE ; 
 int EPSW_IM_7 ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ kernel_thread_helper ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 

int FUNC3(int (*fn)(void *), void *arg, unsigned long flags)
{
	struct pt_regs regs;

	FUNC2(&regs, 0, sizeof(regs));

	regs.a2 = (unsigned long) fn;
	regs.d2 = (unsigned long) arg;
	regs.pc = (unsigned long) kernel_thread_helper;
	FUNC1(regs.epsw);
	regs.epsw |= EPSW_IE | EPSW_IM_7;

	/* Ok, create the new process.. */
	return FUNC0(flags | CLONE_VM | CLONE_UNTRACED, 0, &regs, 0,
		       NULL, NULL);
}