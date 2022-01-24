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
struct ath_hw {int bb_watchdog_last_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_WATCHDOG_STATUS ; 
 int AR_PHY_WATCHDOG_STATUS_CLR ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct ath_hw *ah)
{
	/*
	 * we want to avoid printing in ISR context so we save the
	 * watchdog status to be printed later in bottom half context.
	 */
	ah->bb_watchdog_last_status = FUNC0(ah, AR_PHY_WATCHDOG_STATUS);

	/*
	 * the watchdog timer should reset on status read but to be sure
	 * sure we write 0 to the watchdog status bit.
	 */
	FUNC1(ah, AR_PHY_WATCHDOG_STATUS,
		  ah->bb_watchdog_last_status & ~AR_PHY_WATCHDOG_STATUS_CLR);
}