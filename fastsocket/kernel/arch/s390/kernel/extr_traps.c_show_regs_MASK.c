#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int mask; } ;
struct pt_regs {scalar_t__* gprs; TYPE_2__ psw; } ;
struct TYPE_12__ {int /*<<< orphan*/  version; int /*<<< orphan*/  release; } ;
struct TYPE_8__ {scalar_t__ ksp; } ;
struct TYPE_11__ {TYPE_1__ thread; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct TYPE_10__ {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int PSW_MASK_PSTATE ; 
 TYPE_4__* current ; 
 TYPE_6__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,void*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC8 (TYPE_4__*) ; 

void FUNC9(struct pt_regs *regs)
{
	FUNC1();
	FUNC3("CPU: %d %s %s %.*s\n",
	       FUNC8(current)->cpu, FUNC2(),
	       FUNC0()->release,
	       (int)FUNC7(FUNC0()->version, " "),
	       FUNC0()->version);
	FUNC3("Process %s (pid: %d, task: %p, ksp: %p)\n",
	       current->comm, current->pid, current,
	       (void *) current->thread.ksp);
	FUNC5(regs);
	/* Show stack backtrace if pt_regs is from kernel mode */
	if (!(regs->psw.mask & PSW_MASK_PSTATE))
		FUNC6(NULL, (unsigned long *) regs->gprs[15]);
	FUNC4(regs);
}