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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 unsigned long timer_startval ; 
 unsigned long FUNC3 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4 (void)
{
	unsigned long tdone;
	unsigned long tval;

	/* work out how many ticks have gone since last timer interrupt */

	tval =  FUNC1(FUNC0(4));
	tdone = timer_startval - tval;

	/* check to see if there is an interrupt pending */

	if (FUNC2()) {
		/* re-read the timer, and try and fix up for the missed
		 * interrupt. Note, the interrupt may go off before the
		 * timer has re-loaded from wrapping.
		 */

		tval =  FUNC1(FUNC0(4));
		tdone = timer_startval - tval;

		if (tval != 0)
			tdone += timer_startval;
	}

	return FUNC3(tdone);
}