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
 scalar_t__ IRQ_RAW_STATUS ; 
 int IRQ_TIMERINT1 ; 
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ TIMER1_VA_BASE ; 
 scalar_t__ TIMER_VALUE ; 
 scalar_t__ VA_IC_BASE ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 unsigned long timer_reload ; 

unsigned long FUNC3(void)
{
	unsigned long ticks1, ticks2, status;

	/*
	 * Get the current number of ticks.  Note that there is a race
	 * condition between us reading the timer and checking for
	 * an interrupt.  We get around this by ensuring that the
	 * counter has not reloaded between our two reads.
	 */
	ticks2 = FUNC2(TIMER1_VA_BASE + TIMER_VALUE) & 0xffff;
	do {
		ticks1 = ticks2;
		status = FUNC1(VA_IC_BASE + IRQ_RAW_STATUS);
		ticks2 = FUNC2(TIMER1_VA_BASE + TIMER_VALUE) & 0xffff;
	} while (ticks2 > ticks1);

	/*
	 * Number of ticks since last interrupt.
	 */
	ticks1 = timer_reload - ticks2;

	/*
	 * Interrupt pending?  If so, we've reloaded once already.
	 */
	if (status & (1 << IRQ_TIMERINT1))
		ticks1 += timer_reload;

	/*
	 * Convert the ticks to usecs
	 */
	return FUNC0(ticks1);
}