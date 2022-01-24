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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IXP23XX_TIMER1_INT_PEND ; 
 scalar_t__* IXP23XX_TIMER_CONT ; 
 int /*<<< orphan*/ * IXP23XX_TIMER_STATUS ; 
 long LATCH ; 
 scalar_t__ next_jiffy_time ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static irqreturn_t
FUNC1(int irq, void *dev_id)
{
	/* Clear Pending Interrupt by writing '1' to it */
	*IXP23XX_TIMER_STATUS = IXP23XX_TIMER1_INT_PEND;
	while ((signed long)(*IXP23XX_TIMER_CONT - next_jiffy_time) >= LATCH) {
		FUNC0();
		next_jiffy_time += LATCH;
	}

	return IRQ_HANDLED;
}