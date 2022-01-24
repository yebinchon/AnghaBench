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
struct TYPE_3__ {int /*<<< orphan*/  timer_bits; } ;
struct ath_gen_timer_table {TYPE_1__ timer_mask; } ;
struct ath_hw {struct ath_gen_timer_table hw_gen_timers; } ;
struct ath_gen_timer {size_t index; } ;
struct TYPE_4__ {int mode_mask; int /*<<< orphan*/  mode_addr; } ;

/* Variables and functions */
 size_t AR_FIRST_NDP_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t AR_GEN_TIMER_BANK_1_LEN ; 
 int /*<<< orphan*/  AR_IMR_S5 ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_THRESH ; 
 int /*<<< orphan*/  AR_IMR_S5_GENTIMER_TRIG ; 
 int /*<<< orphan*/  AR_MAC_PCU_GEN_TIMER_TSF_SEL ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 size_t ATH_MAX_GEN_TIMER ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 TYPE_2__* gen_tmr_configuration ; 

void FUNC6(struct ath_hw *ah, struct ath_gen_timer *timer)
{
	struct ath_gen_timer_table *timer_table = &ah->hw_gen_timers;

	if ((timer->index < AR_FIRST_NDP_TIMER) ||
		(timer->index >= ATH_MAX_GEN_TIMER)) {
		return;
	}

	/* Clear generic timer enable bits. */
	FUNC3(ah, gen_tmr_configuration[timer->index].mode_addr,
			gen_tmr_configuration[timer->index].mode_mask);

	if (FUNC1(ah) || FUNC2(ah)) {
		/*
		 * Need to switch back to TSF if it was using TSF2.
		 */
		if ((timer->index >= AR_GEN_TIMER_BANK_1_LEN)) {
			FUNC3(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL,
				    (1 << timer->index));
		}
	}

	/* Disable both trigger and thresh interrupt masks */
	FUNC3(ah, AR_IMR_S5,
		(FUNC4(FUNC0(timer->index), AR_IMR_S5_GENTIMER_THRESH) |
		FUNC4(FUNC0(timer->index), AR_IMR_S5_GENTIMER_TRIG)));

	FUNC5(timer->index, &timer_table->timer_mask.timer_bits);
}