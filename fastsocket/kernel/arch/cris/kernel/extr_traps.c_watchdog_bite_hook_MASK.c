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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(struct pt_regs *regs)
{
#ifdef CONFIG_ETRAX_WATCHDOG_NICE_DOGGY
	local_irq_disable();
	stop_watchdog();
	show_registers(regs);

	while (1)
		; /* Do nothing. */
#else
	FUNC1(regs);
#endif
}