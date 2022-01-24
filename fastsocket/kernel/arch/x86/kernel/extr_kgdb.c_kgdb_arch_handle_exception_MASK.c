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
struct pt_regs {unsigned long ip; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_EFLAGS_RF ; 
 int /*<<< orphan*/  X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* breakinfo ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  kgdb_cpu_doing_single_step ; 
 int /*<<< orphan*/  FUNC3 (char**,unsigned long*) ; 
 int kgdb_single_step ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 

int FUNC6(int e_vector, int signo, int err_code,
			       char *remcomInBuffer, char *remcomOutBuffer,
			       struct pt_regs *linux_regs)
{
	unsigned long addr;
	unsigned long dr6;
	char *ptr;
	int newPC;

	switch (remcomInBuffer[0]) {
	case 'c':
	case 's':
		/* try to read optional parameter, pc unchanged if no parm */
		ptr = &remcomInBuffer[1];
		if (FUNC3(&ptr, &addr))
			linux_regs->ip = addr;
	case 'D':
	case 'k':
		newPC = linux_regs->ip;

		/* clear the trace bit */
		linux_regs->flags &= ~X86_EFLAGS_TF;
		FUNC0(&kgdb_cpu_doing_single_step, -1);

		/* set the trace bit if we're stepping */
		if (remcomInBuffer[0] == 's') {
			linux_regs->flags |= X86_EFLAGS_TF;
			kgdb_single_step = 1;
			FUNC0(&kgdb_cpu_doing_single_step,
				   FUNC4());
		}

		FUNC1(dr6, 6);
		if (!(dr6 & 0x4000)) {
			int breakno;

			for (breakno = 0; breakno < 4; breakno++) {
				if (dr6 & (1 << breakno) &&
				    breakinfo[breakno].type == 0) {
					/* Set restore flag: */
					linux_regs->flags |= X86_EFLAGS_RF;
					break;
				}
			}
		}
		FUNC5(0UL, 6);
		FUNC2();

		return 0;
	}

	/* this means that we do not want to exit from the handler: */
	return -1;
}