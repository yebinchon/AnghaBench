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
struct pt_regs {unsigned long cp0_epc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kgdb_cpu_doing_single_step ; 
 int /*<<< orphan*/  FUNC1 (char**,unsigned long*) ; 
 int FUNC2 () ; 

int FUNC3(int vector, int signo, int err_code,
			       char *remcom_in_buffer, char *remcom_out_buffer,
			       struct pt_regs *regs)
{
	char *ptr;
	unsigned long address;
	int cpu = FUNC2();

	switch (remcom_in_buffer[0]) {
	case 's':
	case 'c':
		/* handle the optional parameter */
		ptr = &remcom_in_buffer[1];
		if (FUNC1(&ptr, &address))
			regs->cp0_epc = address;

		FUNC0(&kgdb_cpu_doing_single_step, -1);
		if (remcom_in_buffer[0] == 's')
			FUNC0(&kgdb_cpu_doing_single_step, cpu);

		return 0;
	}

	return -1;
}