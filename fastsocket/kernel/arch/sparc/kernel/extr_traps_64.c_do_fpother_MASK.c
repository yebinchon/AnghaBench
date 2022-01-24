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
struct fpustate {int dummy; } ;
struct TYPE_2__ {int* xfsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_TRAP ; 
 struct fpustate* FPUSTATE ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGFPE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int FUNC2 (struct pt_regs*,struct fpustate*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,struct pt_regs*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct pt_regs *regs)
{
	struct fpustate *f = FPUSTATE;
	int ret = 0;

	if (FUNC3(DIE_TRAP, "fpu exception other", regs,
		       0, 0x25, SIGFPE) == NOTIFY_STOP)
		return;

	switch ((FUNC0()->xfsr[0] & 0x1c000)) {
	case (2 << 14): /* unfinished_FPop */
	case (3 << 14): /* unimplemented_FPop */
		ret = FUNC2(regs, f);
		break;
	}
	if (ret)
		return;
	FUNC1(regs);
}