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
struct pt_regs {scalar_t__* regs; } ;

/* Variables and functions */
 unsigned int backtrace_limit ; 
 int /*<<< orphan*/  backtrace_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pt_regs* const,unsigned long*,int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned long* FUNC1 (unsigned long*,struct pt_regs* const) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs* const) ; 

void FUNC3(struct pt_regs * const regs, unsigned int depth)
{
	unsigned long *stackaddr;

	/*
	 * Paranoia - clip max depth as we could get lost in the weeds.
	 */
	if (depth > backtrace_limit)
		depth = backtrace_limit;

	stackaddr = (unsigned long *)regs->regs[15];
	if (!FUNC2(regs)) {
		if (depth)
			FUNC0(NULL, regs, stackaddr,
				     &backtrace_ops, &depth);
		return;
	}

	while (depth-- && (stackaddr != NULL))
		stackaddr = FUNC1(stackaddr, regs);
}