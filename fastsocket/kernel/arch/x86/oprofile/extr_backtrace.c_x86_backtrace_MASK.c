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
struct stack_frame {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  backtrace_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pt_regs* const,unsigned long*,int /*<<< orphan*/ *,unsigned int*) ; 
 struct stack_frame* FUNC1 (struct stack_frame*) ; 
 scalar_t__ FUNC2 (struct pt_regs* const) ; 
 unsigned long FUNC3 (struct pt_regs* const) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs* const) ; 
 scalar_t__ FUNC5 (struct pt_regs* const,unsigned int) ; 

void
FUNC6(struct pt_regs * const regs, unsigned int depth)
{
	struct stack_frame *head = (struct stack_frame *)FUNC2(regs);

	if (!FUNC4(regs)) {
		unsigned long stack = FUNC3(regs);
		if (depth)
			FUNC0(NULL, regs, (unsigned long *)stack,
				   &backtrace_ops, &depth);
		return;
	}

	if (FUNC5(regs, depth))
		return;

	while (depth-- && head)
		head = FUNC1(head);
}