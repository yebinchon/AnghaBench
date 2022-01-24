#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int /*<<< orphan*/  pc; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(struct pt_regs *regs)
{
	FUNC0("Illegal instruction in kernel", regs, SIGKILL);

	/* If in user mode, send SIGILL signal to current process. */

	FUNC2("Illegal Instruction in '%s' (pid = %d, pc = %#010lx)\n",
	    current->comm, FUNC3(current), regs->pc);
	FUNC1(SIGILL, current);
}