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
struct pt_regs {int /*<<< orphan*/  er6; int /*<<< orphan*/  er5; int /*<<< orphan*/  er4; int /*<<< orphan*/  er3; int /*<<< orphan*/  er2; int /*<<< orphan*/  er1; int /*<<< orphan*/  er0; int /*<<< orphan*/  orig_er0; int /*<<< orphan*/  ccr; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 

void FUNC3(struct pt_regs * regs)
{
	FUNC0("\nPC: %08lx  Status: %02x",
	       regs->pc, regs->ccr);
	FUNC0("\nORIG_ER0: %08lx ER0: %08lx ER1: %08lx",
	       regs->orig_er0, regs->er0, regs->er1);
	FUNC0("\nER2: %08lx ER3: %08lx ER4: %08lx ER5: %08lx",
	       regs->er2, regs->er3, regs->er4, regs->er5);
	FUNC0("\nER6' %08lx ",regs->er6);
	if (FUNC2(regs))
		FUNC0("USP: %08lx\n", FUNC1());
	else
		FUNC0("\n");
}