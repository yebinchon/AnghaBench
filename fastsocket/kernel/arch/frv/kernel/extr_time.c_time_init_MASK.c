#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_CPU_TIMER0 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  timer_irq ; 
 TYPE_1__ xtime ; 

void FUNC3(void)
{
	unsigned int year, mon, day, hour, min, sec;

	extern void FUNC0(int *year, int *mon, int *day, int *hour, int *min, int *sec);

	/* FIX by dqg : Set to zero for platforms that don't have tod */
	/* without this time is undefined and can overflow time_t, causing  */
	/* very strange errors */
	year = 1980;
	mon = day = 1;
	hour = min = sec = 0;
	FUNC0 (&year, &mon, &day, &hour, &min, &sec);

	if ((year += 1900) < 1970)
		year += 100;
	xtime.tv_sec = FUNC0(year, mon, day, hour, min, sec);
	xtime.tv_nsec = 0;

	/* install scheduling interrupt handler */
	FUNC1(IRQ_CPU_TIMER0, &timer_irq);

	FUNC2();
}