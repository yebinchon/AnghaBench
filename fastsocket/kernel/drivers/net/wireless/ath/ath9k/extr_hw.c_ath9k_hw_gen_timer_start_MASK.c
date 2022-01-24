#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  timer_bits; } ;
struct ath_gen_timer_table {TYPE_1__ timer_mask; } ;
struct ath_hw {struct ath_gen_timer_table hw_gen_timers; } ;
struct ath_gen_timer {size_t index; } ;
struct TYPE_4__ {int mode_mask; int /*<<< orphan*/  mode_addr; int /*<<< orphan*/  period_addr; int /*<<< orphan*/  next_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t AR_GEN_TIMER_BANK_1_LEN ; 
 int /*<<< orphan*/  AR_IMR_S5 ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_THRESH ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_TRIG ; 
 int /*<<< orphan*/  AR_MAC_PCU_GEN_TIMER_TSF_SEL ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  HWTIMER ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_2__* gen_tmr_configuration ; 
 int /*<<< orphan*/  FUNC11 (size_t,int /*<<< orphan*/ *) ; 

void FUNC12(struct ath_hw *ah,
			      struct ath_gen_timer *timer,
			      u32 trig_timeout,
			      u32 timer_period)
{
	struct ath_gen_timer_table *timer_table = &ah->hw_gen_timers;
	u32 tsf, timer_next;

	FUNC3(!timer_period);

	FUNC11(timer->index, &timer_table->timer_mask.timer_bits);

	tsf = FUNC9(ah);

	timer_next = tsf + trig_timeout;

	FUNC10(FUNC8(ah), HWTIMER,
		"current tsf %x period %x timer_next %x\n",
		tsf, timer_period, timer_next);

	/*
	 * Program generic timer registers
	 */
	FUNC6(ah, gen_tmr_configuration[timer->index].next_addr,
		 timer_next);
	FUNC6(ah, gen_tmr_configuration[timer->index].period_addr,
		  timer_period);
	FUNC5(ah, gen_tmr_configuration[timer->index].mode_addr,
		    gen_tmr_configuration[timer->index].mode_mask);

	if (FUNC1(ah) || FUNC2(ah)) {
		/*
		 * Starting from AR9462, each generic timer can select which tsf
		 * to use. But we still follow the old rule, 0 - 7 use tsf and
		 * 8 - 15  use tsf2.
		 */
		if ((timer->index < AR_GEN_TIMER_BANK_1_LEN))
			FUNC4(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL,
				       (1 << timer->index));
		else
			FUNC5(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL,
				       (1 << timer->index));
	}

	/* Enable both trigger and thresh interrupt masks */
	FUNC5(ah, AR_IMR_S5,
		(FUNC7(FUNC0(timer->index), AR_IMR_S5_GENTIMER_THRESH) |
		FUNC7(FUNC0(timer->index), AR_IMR_S5_GENTIMER_TRIG)));
}