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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {long tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_PROFILING ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TICK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ xtime ; 
 int /*<<< orphan*/  xtime_lock ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dummy)
{
	/* last time the cmos clock got updated */
	static long last_rtc_update = 0;

	FUNC4(CPU_PROFILING);
	/*
	 * Here we are in the timer irq handler. We just have irqs locally
	 * disabled but we don't know if the timer_bh is running on the other
	 * CPU. We need to avoid to SMP race with it. NOTE: we don't need
	 * the irq version of write_lock because as just said we have irq
	 * locally disabled. -arca
	 */
	FUNC8(&xtime_lock);

	FUNC1(1);

	/*
	 * If we have an externally synchronized Linux clock, then update
	 * CMOS clock accordingly every ~11 minutes. Set_rtc_mmss() has to be
	 * called as close as possible to 500 ms before the new second starts.
	 */
	if (FUNC3() &&
	    xtime.tv_sec > last_rtc_update + 660 &&
	    (xtime.tv_nsec / 1000) >= 500000 - ((unsigned) TICK_SIZE) / 2 &&
	    (xtime.tv_nsec / 1000) <= 500000 + ((unsigned) TICK_SIZE) / 2
	    ) {
		if (FUNC5(xtime.tv_sec) == 0)
			last_rtc_update = xtime.tv_sec;
		else
			last_rtc_update = xtime.tv_sec - 600; /* do it again in 60 s */
	}

#ifdef CONFIG_HEARTBEAT
	static unsigned short n;
	n++;
	__set_LEDS(n);
#endif /* CONFIG_HEARTBEAT */

	FUNC9(&xtime_lock);

	FUNC6(FUNC7(FUNC2()));

	return IRQ_HANDLED;
}