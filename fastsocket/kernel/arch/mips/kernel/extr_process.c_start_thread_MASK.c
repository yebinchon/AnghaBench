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
struct pt_regs {unsigned long cp0_status; unsigned long cp0_epc; unsigned long* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr_limit; } ;

/* Variables and functions */
 unsigned long KU_MASK ; 
 unsigned long KU_USER ; 
 unsigned long ST0_CU0 ; 
 unsigned long ST0_CU1 ; 
 unsigned long ST0_FR ; 
 int /*<<< orphan*/  TIF_32BIT_REGS ; 
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ cpu_has_dsp ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct pt_regs * regs, unsigned long pc, unsigned long sp)
{
	unsigned long status;

	/* New thread loses kernel privileges. */
	status = regs->cp0_status & ~(ST0_CU0|ST0_CU1|ST0_FR|KU_MASK);
#ifdef CONFIG_64BIT
	status |= test_thread_flag(TIF_32BIT_REGS) ? 0 : ST0_FR;
#endif
	status |= KU_USER;
	regs->cp0_status = status;
	FUNC2();
	FUNC1();
	if (cpu_has_dsp)
		FUNC0();
	regs->cp0_epc = pc;
	regs->regs[29] = sp;
	FUNC3()->addr_limit = USER_DS;
}