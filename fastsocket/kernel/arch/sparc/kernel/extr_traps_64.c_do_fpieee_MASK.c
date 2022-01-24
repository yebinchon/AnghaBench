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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_TRAP ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,struct pt_regs*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct pt_regs *regs)
{
	if (FUNC1(DIE_TRAP, "fpu exception ieee", regs,
		       0, 0x24, SIGFPE) == NOTIFY_STOP)
		return;

	FUNC0(regs);
}