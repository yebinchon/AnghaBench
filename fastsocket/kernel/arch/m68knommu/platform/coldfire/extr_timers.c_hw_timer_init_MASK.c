#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  shift; int /*<<< orphan*/  mult; } ;

/* Variables and functions */
 int FREQ ; 
 int HZ ; 
 int /*<<< orphan*/  MCFTIMER_TMR ; 
 int MCFTIMER_TMR_CLK16 ; 
 int MCFTIMER_TMR_DISABLE ; 
 int MCFTIMER_TMR_ENABLE ; 
 int MCFTIMER_TMR_ENORI ; 
 int MCFTIMER_TMR_RESTART ; 
 int /*<<< orphan*/  MCFTIMER_TRR ; 
 int /*<<< orphan*/  MCF_IRQ_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ mcftmr_clk ; 
 int mcftmr_cycles_per_jiffy ; 
 int /*<<< orphan*/  mcftmr_timer_irq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	FUNC2(MCFTIMER_TMR_DISABLE, FUNC0(MCFTIMER_TMR));
	mcftmr_cycles_per_jiffy = FREQ / HZ;
	/*
	 *	The coldfire timer runs from 0 to TRR included, then 0
	 *	again and so on.  It counts thus actually TRR + 1 steps
	 *	for 1 tick, not TRR.  So if you want n cycles,
	 *	initialize TRR with n - 1.
	 */
	FUNC1(mcftmr_cycles_per_jiffy - 1, FUNC0(MCFTIMER_TRR));
	FUNC2(MCFTIMER_TMR_ENORI | MCFTIMER_TMR_CLK16 |
		MCFTIMER_TMR_RESTART | MCFTIMER_TMR_ENABLE, FUNC0(MCFTIMER_TMR));

	mcftmr_clk.mult = FUNC3(FREQ, mcftmr_clk.shift);
	FUNC4(&mcftmr_clk);

	FUNC6(MCF_IRQ_TIMER, &mcftmr_timer_irq);

#ifdef CONFIG_HIGHPROFILE
	coldfire_profile_init();
#endif
}