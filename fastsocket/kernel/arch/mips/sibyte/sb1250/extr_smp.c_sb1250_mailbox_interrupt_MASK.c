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
typedef  int u64 ;

/* Variables and functions */
 int K_INT_MBOX_0 ; 
 unsigned int SMP_CALL_FUNCTION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mailbox_clear_regs ; 
 int /*<<< orphan*/ * mailbox_regs ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 

void FUNC6(void)
{
	int cpu = FUNC5();
	int irq = K_INT_MBOX_0;
	unsigned int action;

	FUNC3(irq, FUNC2(irq));
	/* Load the mailbox register to figure out what we're supposed to do */
	action = (FUNC0(mailbox_regs[cpu]) >> 48) & 0xffff;

	/* Clear the mailbox to clear the interrupt */
	FUNC1(((u64)action) << 48, mailbox_clear_regs[cpu]);

	/*
	 * Nothing to do for SMP_RESCHEDULE_YOURSELF; returning from the
	 * interrupt will do the reschedule for us
	 */

	if (action & SMP_CALL_FUNCTION)
		FUNC4();
}