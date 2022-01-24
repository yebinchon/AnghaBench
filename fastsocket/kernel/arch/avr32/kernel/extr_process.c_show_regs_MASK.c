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
struct pt_regs {unsigned long sp; } ;

/* Variables and functions */
 unsigned long FRAME_SIZE_FULL ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*,struct pt_regs*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 

void FUNC3(struct pt_regs *regs)
{
	unsigned long sp = regs->sp;

	if (!FUNC2(regs))
		sp = (unsigned long)regs + FRAME_SIZE_FULL;

	FUNC0(regs, "");
	FUNC1(current, (unsigned long *)sp, regs, "");
}