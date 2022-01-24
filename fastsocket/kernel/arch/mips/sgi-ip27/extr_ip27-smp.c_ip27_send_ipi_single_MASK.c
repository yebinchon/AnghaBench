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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CPU_CALL_A_IRQ ; 
 int CPU_RESCHED_A_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
#define  SMP_CALL_FUNCTION 129 
#define  SMP_RESCHEDULE_YOURSELF 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(int destid, unsigned int action)
{
	int irq;

	switch (action) {
	case SMP_RESCHEDULE_YOURSELF:
		irq = CPU_RESCHED_A_IRQ;
		break;
	case SMP_CALL_FUNCTION:
		irq = CPU_CALL_A_IRQ;
		break;
	default:
		FUNC4("sendintr");
	}

	irq += FUNC3(destid);

	/*
	 * Convert the compact hub number to the NASID to get the correct
	 * part of the address space.  Then set the interrupt bit associated
	 * with the CPU we want to send the interrupt to.
	 */
	FUNC1(FUNC0(FUNC2(destid)), irq);
}