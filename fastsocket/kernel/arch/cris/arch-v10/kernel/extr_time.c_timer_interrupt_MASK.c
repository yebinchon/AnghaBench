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
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int* R_TIMER_CTRL ; 
 int /*<<< orphan*/  c6250kHz ; 
 int /*<<< orphan*/  cascade0 ; 
 int /*<<< orphan*/  clksel0 ; 
 int /*<<< orphan*/  clksel1 ; 
 int /*<<< orphan*/  clr ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct pt_regs* FUNC4 () ; 
 int /*<<< orphan*/  i0 ; 
 int /*<<< orphan*/  i1 ; 
 scalar_t__ last_rtc_update ; 
 scalar_t__ FUNC5 () ; 
 int r_timer_ctrl_shadow ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  run ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int tick_nsec ; 
 int /*<<< orphan*/  timerdiv0 ; 
 int /*<<< orphan*/  timerdiv1 ; 
 int /*<<< orphan*/  tm0 ; 
 int /*<<< orphan*/  tm1 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pt_regs*) ; 
 TYPE_1__ xtime ; 

__attribute__((used)) static inline irqreturn_t
FUNC10(int irq, void *dev_id)
{
	struct pt_regs *regs = FUNC4();
	/* acknowledge the timer irq */

#ifdef USE_CASCADE_TIMERS
	*R_TIMER_CTRL =
		IO_FIELD( R_TIMER_CTRL, timerdiv1, 0) |
		IO_FIELD( R_TIMER_CTRL, timerdiv0, 0) |
		IO_STATE( R_TIMER_CTRL, i1, clr) |
		IO_STATE( R_TIMER_CTRL, tm1, run) |
		IO_STATE( R_TIMER_CTRL, clksel1, cascade0) |
		IO_STATE( R_TIMER_CTRL, i0, clr) |
		IO_STATE( R_TIMER_CTRL, tm0, run) |
		IO_STATE( R_TIMER_CTRL, clksel0, c6250kHz);
#else
	*R_TIMER_CTRL = r_timer_ctrl_shadow | 
		FUNC1(R_TIMER_CTRL, i0, clr);
#endif

	/* reset watchdog otherwise it resets us! */
	FUNC6();
	
	/* Update statistics. */
	FUNC8(FUNC9(regs));

	/* call the real timer interrupt handler */

	FUNC3(1);
	
        FUNC2(regs); /* Save profiling information */

	/*
	 * If we have an externally synchronized Linux clock, then update
	 * CMOS clock accordingly every ~11 minutes. Set_rtc_mmss() has to be
	 * called as close as possible to 500 ms before the new second starts.
	 *
	 * The division here is not time critical since it will run once in 
	 * 11 minutes
	 */
	if (FUNC5() &&
	    xtime.tv_sec > last_rtc_update + 660 &&
	    (xtime.tv_nsec / 1000) >= 500000 - (tick_nsec / 1000) / 2 &&
	    (xtime.tv_nsec / 1000) <= 500000 + (tick_nsec / 1000) / 2) {
		if (FUNC7(xtime.tv_sec) == 0)
			last_rtc_update = xtime.tv_sec;
		else
			last_rtc_update = xtime.tv_sec - 600; /* do it again in 60 s */
	}
        return IRQ_HANDLED;
}