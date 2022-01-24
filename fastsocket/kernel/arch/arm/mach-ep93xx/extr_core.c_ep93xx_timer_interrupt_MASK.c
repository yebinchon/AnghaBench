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
 int /*<<< orphan*/  EP93XX_TIMER1_CLEAR ; 
 int /*<<< orphan*/  EP93XX_TIMER4_VALUE_LOW ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 long TIMER4_TICKS_PER_JIFFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ last_jiffy_time ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	FUNC1(1, EP93XX_TIMER1_CLEAR);
	while ((signed long)
		(FUNC0(EP93XX_TIMER4_VALUE_LOW) - last_jiffy_time)
						>= TIMER4_TICKS_PER_JIFFY) {
		last_jiffy_time += TIMER4_TICKS_PER_JIFFY;
		FUNC2();
	}

	return IRQ_HANDLED;
}