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
struct pt_regs {unsigned long r5; unsigned long r6; unsigned long pc; int pt_mode; int /*<<< orphan*/  msr; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 unsigned long CLONE_UNTRACED ; 
 unsigned long CLONE_VM ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ kernel_thread_helper ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 

int FUNC3(int (*fn)(void *), void *arg, unsigned long flags)
{
	struct pt_regs regs;

	FUNC2(&regs, 0, sizeof(regs));
	/* store them in non-volatile registers */
	regs.r5 = (unsigned long)fn;
	regs.r6 = (unsigned long)arg;
	FUNC1(regs.msr);
	regs.pc = (unsigned long)kernel_thread_helper;
	regs.pt_mode = 1;

	return FUNC0(flags | CLONE_VM | CLONE_UNTRACED, 0,
			&regs, 0, NULL, NULL);
}