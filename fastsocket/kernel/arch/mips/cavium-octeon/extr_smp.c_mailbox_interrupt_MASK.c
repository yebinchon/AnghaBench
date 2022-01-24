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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SMP_CALL_FUNCTION ; 
 int SMP_ICACHE_FLUSH ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	const int coreid = FUNC1();
	uint64_t action;

	/* Load the mailbox register to figure out what we're supposed to do */
	action = FUNC2(FUNC0(coreid));

	/* Clear the mailbox to clear the interrupt */
	FUNC3(FUNC0(coreid), action);

	if (action & SMP_CALL_FUNCTION)
		FUNC4();

	/* Check if we've been told to flush the icache */
	if (action & SMP_ICACHE_FLUSH)
		asm volatile ("synci 0($0)\n");
	return IRQ_HANDLED;
}