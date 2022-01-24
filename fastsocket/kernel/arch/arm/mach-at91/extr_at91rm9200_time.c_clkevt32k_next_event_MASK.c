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
 int /*<<< orphan*/  AT91_ST_RTAR ; 
 int /*<<< orphan*/  AT91_ST_SR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned long FUNC7 () ; 

__attribute__((used)) static int
FUNC8(unsigned long delta, struct clock_event_device *dev)
{
	unsigned long	flags;
	u32		alm;
	int		status = 0;

	FUNC0(delta < 2);

	/* Use "raw" primitives so we behave correctly on RT kernels. */
	FUNC6(flags);

	/*
	 * According to Thomas Gleixner irqs are already disabled here.  Simply
	 * removing raw_local_irq_save above (and the matching
	 * raw_local_irq_restore) was not accepted.  See
	 * http://thread.gmane.org/gmane.linux.ports.arm.kernel/41174
	 * So for now (2008-11-20) just warn once if irqs were not disabled ...
	 */
	FUNC1(!FUNC4(flags));

	/* The alarm IRQ uses absolute time (now+delta), not the relative
	 * time (delta) in our calling convention.  Like all clockevents
	 * using such "match" hardware, we have a race to defend against.
	 *
	 * Our defense here is to have set up the clockevent device so the
	 * delta is at least two.  That way we never end up writing RTAR
	 * with the value then held in CRTR ... which would mean the match
	 * wouldn't trigger until 32 seconds later, after CRTR wraps.
	 */
	alm = FUNC7();

	/* Cancel any pending alarm; flush any pending IRQ */
	FUNC3(AT91_ST_RTAR, alm);
	(void) FUNC2(AT91_ST_SR);

	/* Schedule alarm by writing RTAR. */
	alm += delta;
	FUNC3(AT91_ST_RTAR, alm);

	FUNC5(flags);
	return status;
}