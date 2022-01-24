#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct reg_window32 {scalar_t__* ins; } ;
struct pt_regs {int psr; scalar_t__ pc; scalar_t__* u_regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 unsigned long PAGE_OFFSET ; 
 int PSR_PS ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 size_t UREG_FP ; 
 int /*<<< orphan*/  __RESTORE ; 
 int /*<<< orphan*/  __SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(char *str, struct pt_regs *regs)
{
	static int die_counter;
	int count = 0;

	/* Amuse the user. */
	FUNC3(
"              \\|/ ____ \\|/\n"
"              \"@'/ ,. \\`@\"\n"
"              /_| \\__/ |_\\\n"
"                 \\__U_/\n");

	FUNC3("%s(%d): %s [#%d]\n", current->comm, FUNC5(current), str, ++die_counter);
	FUNC4(regs);
	FUNC0(TAINT_DIE);

	__SAVE; __SAVE; __SAVE; __SAVE;
	__SAVE; __SAVE; __SAVE; __SAVE;
	__RESTORE; __RESTORE; __RESTORE; __RESTORE;
	__RESTORE; __RESTORE; __RESTORE; __RESTORE;

	{
		struct reg_window32 *rw = (struct reg_window32 *)regs->u_regs[UREG_FP];

		/* Stop the back trace when we hit userland or we
		 * find some badly aligned kernel stack. Set an upper
		 * bound in case our stack is trashed and we loop.
		 */
		while(rw					&&
		      count++ < 30				&&
                      (((unsigned long) rw) >= PAGE_OFFSET)	&&
		      !(((unsigned long) rw) & 0x7)) {
			FUNC3("Caller[%08lx]: %pS\n", rw->ins[7],
			       (void *) rw->ins[7]);
			rw = (struct reg_window32 *)rw->ins[6];
		}
	}
	FUNC3("Instruction DUMP:");
	FUNC2 ((unsigned long *) regs->pc);
	if(regs->psr & PSR_PS)
		FUNC1(SIGKILL);
	FUNC1(SIGSEGV);
}