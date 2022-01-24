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
typedef  unsigned long u32 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_CAUSE ; 
 unsigned long BRIDGE_INT_TIMER1 ; 
 unsigned long BRIDGE_INT_TIMER1_CLR ; 
 int /*<<< orphan*/  BRIDGE_MASK ; 
 int ETIME ; 
 unsigned long TIMER1_EN ; 
 unsigned long TIMER1_RELOAD_EN ; 
 int /*<<< orphan*/  TIMER1_VAL ; 
 int /*<<< orphan*/  TIMER_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(unsigned long delta, struct clock_event_device *dev)
{
	unsigned long flags;
	u32 u;

	if (delta == 0)
		return -ETIME;

	FUNC1(flags);

	/*
	 * Clear and enable clockevent timer interrupt.
	 */
	FUNC3(BRIDGE_INT_TIMER1_CLR, BRIDGE_CAUSE);

	u = FUNC2(BRIDGE_MASK);
	u |= BRIDGE_INT_TIMER1;
	FUNC3(u, BRIDGE_MASK);

	/*
	 * Setup new clockevent timer value.
	 */
	FUNC3(delta, TIMER1_VAL);

	/*
	 * Enable the timer.
	 */
	u = FUNC2(TIMER_CTRL);
	u = (u & ~TIMER1_RELOAD_EN) | TIMER1_EN;
	FUNC3(u, TIMER_CTRL);

	FUNC0(flags);

	return 0;
}