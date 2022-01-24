#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_6__ {int tmr0; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ reg_timer_rw_ack_intr ;
struct TYPE_7__ {int /*<<< orphan*/  tmr0; } ;
typedef  TYPE_2__ reg_timer_r_masked_intr ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_8__ {scalar_t__ tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int STA_UNSYNC ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct pt_regs* FUNC4 () ; 
 scalar_t__ last_rtc_update ; 
 int /*<<< orphan*/  r_masked_intr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  rw_ack_intr ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 () ; 
 int tick_nsec ; 
 int time_status ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/ * timer_regs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pt_regs*) ; 
 TYPE_3__ xtime ; 

__attribute__((used)) static inline irqreturn_t
FUNC10(int irq, void *dev_id)
{
	struct pt_regs *regs = FUNC4();
	int cpu = FUNC7();
	reg_timer_r_masked_intr masked_intr;
	reg_timer_rw_ack_intr ack_intr = { 0 };

	/* Check if the timer interrupt is for us (a tmr0 int) */
	masked_intr = FUNC0(timer, timer_regs[cpu], r_masked_intr);
	if (!masked_intr.tmr0)
		return IRQ_NONE;

	/* Acknowledge the timer irq. */
	ack_intr.tmr0 = 1;
	FUNC1(timer, timer_regs[cpu], rw_ack_intr, ack_intr);

	/* Reset watchdog otherwise it resets us! */
	FUNC5();

        /* Update statistics. */
	FUNC8(FUNC9(regs));

	FUNC2(regs); /* Save profiling information */

	/* The master CPU is responsible for the time keeping. */
	if (cpu != 0)
		return IRQ_HANDLED;

	/* Call the real timer interrupt handler */
	FUNC3(1);

	/*
	 * If we have an externally synchronized Linux clock, then update
	 * CMOS clock accordingly every ~11 minutes. Set_rtc_mmss() has to be
	 * called as close as possible to 500 ms before the new second starts.
	 *
	 * The division here is not time critical since it will run once in
	 * 11 minutes
	 */
	if ((time_status & STA_UNSYNC) == 0 &&
	    xtime.tv_sec > last_rtc_update + 660 &&
	    (xtime.tv_nsec / 1000) >= 500000 - (tick_nsec / 1000) / 2 &&
	    (xtime.tv_nsec / 1000) <= 500000 + (tick_nsec / 1000) / 2) {
		if (FUNC6(xtime.tv_sec) == 0)
			last_rtc_update = xtime.tv_sec;
		else
			/* Do it again in 60 s */
			last_rtc_update = xtime.tv_sec - 600;
	}
        return IRQ_HANDLED;
}