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
 int IRQ_HANDLED ; 
 int /*<<< orphan*/  IXP2000_T1_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__* missing_jiffy_timer_csr ; 
 scalar_t__ next_jiffy_time ; 
 long ticks_per_jiffy ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(int irq, void *dev_id)
{
	/* clear timer 1 */
	FUNC0(IXP2000_T1_CLR, 1);

	while ((signed long)(next_jiffy_time - *missing_jiffy_timer_csr)
							>= ticks_per_jiffy) {
		FUNC1();
		next_jiffy_time -= ticks_per_jiffy;
	}

	return IRQ_HANDLED;
}