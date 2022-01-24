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
struct pt_regs {unsigned long pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  kgdb_cpu_doing_single_step ; 
 int /*<<< orphan*/  FUNC2 (char**,unsigned long*) ; 
 int kgdb_single_step ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 

int FUNC5(int e_vector, int signo, int err_code,
			       char *remcomInBuffer, char *remcomOutBuffer,
			       struct pt_regs *linux_regs)
{
	unsigned long addr;
	char *ptr;

	/* Undo any stepping we may have done */
	FUNC4(linux_regs);

	switch (remcomInBuffer[0]) {
	case 'c':
	case 's':
		/* try to read optional parameter, pc unchanged if no parm */
		ptr = &remcomInBuffer[1];
		if (FUNC2(&ptr, &addr))
			linux_regs->pc = addr;
	case 'D':
	case 'k':
		FUNC0(&kgdb_cpu_doing_single_step, -1);

		if (remcomInBuffer[0] == 's') {
			FUNC1(linux_regs);
			kgdb_single_step = 1;

			FUNC0(&kgdb_cpu_doing_single_step,
				   FUNC3());
		}

		return 0;
	}

	/* this means that we do not want to exit from the handler: */
	return -1;
}