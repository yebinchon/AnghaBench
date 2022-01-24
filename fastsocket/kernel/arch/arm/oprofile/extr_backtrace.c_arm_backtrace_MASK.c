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
struct stackframe {int /*<<< orphan*/  pc; int /*<<< orphan*/  lr; int /*<<< orphan*/  sp; scalar_t__ fp; } ;
struct pt_regs {int /*<<< orphan*/  ARM_pc; int /*<<< orphan*/  ARM_lr; int /*<<< orphan*/  ARM_sp; scalar_t__ ARM_fp; } ;
struct frame_tail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  report_trace ; 
 struct frame_tail* FUNC0 (struct frame_tail*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs* const) ; 
 int /*<<< orphan*/  FUNC2 (struct stackframe*,int /*<<< orphan*/ ,unsigned int*) ; 

void FUNC3(struct pt_regs * const regs, unsigned int depth)
{
	struct frame_tail *tail = ((struct frame_tail *) regs->ARM_fp) - 1;

	if (!FUNC1(regs)) {
		struct stackframe frame;
		frame.fp = regs->ARM_fp;
		frame.sp = regs->ARM_sp;
		frame.lr = regs->ARM_lr;
		frame.pc = regs->ARM_pc;
		FUNC2(&frame, report_trace, &depth);
		return;
	}

	while (depth-- && tail && !((unsigned long) tail & 3))
		tail = FUNC0(tail);
}