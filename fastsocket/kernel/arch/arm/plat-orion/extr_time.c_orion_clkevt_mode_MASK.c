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
typedef  int u32 ;
struct clock_event_device {int dummy; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_CAUSE ; 
 int BRIDGE_INT_TIMER1 ; 
 int BRIDGE_INT_TIMER1_CLR ; 
 int /*<<< orphan*/  BRIDGE_MASK ; 
 int CLOCK_EVT_MODE_PERIODIC ; 
 int TIMER1_EN ; 
 int /*<<< orphan*/  TIMER1_RELOAD ; 
 int TIMER1_RELOAD_EN ; 
 int /*<<< orphan*/  TIMER1_VAL ; 
 int /*<<< orphan*/  TIMER_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ticks_per_jiffy ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(enum clock_event_mode mode, struct clock_event_device *dev)
{
	unsigned long flags;
	u32 u;

	FUNC1(flags);
	if (mode == CLOCK_EVT_MODE_PERIODIC) {
		/*
		 * Setup timer to fire at 1/HZ intervals.
		 */
		FUNC3(ticks_per_jiffy - 1, TIMER1_RELOAD);
		FUNC3(ticks_per_jiffy - 1, TIMER1_VAL);

		/*
		 * Enable timer interrupt.
		 */
		u = FUNC2(BRIDGE_MASK);
		FUNC3(u | BRIDGE_INT_TIMER1, BRIDGE_MASK);

		/*
		 * Enable timer.
		 */
		u = FUNC2(TIMER_CTRL);
		FUNC3(u | TIMER1_EN | TIMER1_RELOAD_EN, TIMER_CTRL);
	} else {
		/*
		 * Disable timer.
		 */
		u = FUNC2(TIMER_CTRL);
		FUNC3(u & ~TIMER1_EN, TIMER_CTRL);

		/*
		 * Disable timer interrupt.
		 */
		u = FUNC2(BRIDGE_MASK);
		FUNC3(u & ~BRIDGE_INT_TIMER1, BRIDGE_MASK);

		/*
		 * ACK pending timer interrupt.
		 */
		FUNC3(BRIDGE_INT_TIMER1_CLR, BRIDGE_CAUSE);

	}
	FUNC0(flags);
}