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
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int bb_hang_rx_ofdm; int /*<<< orphan*/  bb_watchdog_last_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_RESTART ; 
 int /*<<< orphan*/  AR_PHY_RESTART_ENA ; 
 int /*<<< orphan*/  AR_PHY_WATCHDOG_RX_OFDM_SM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath_hw *ah)
{
	u32 val;

	/* While receiving unsupported rate frame rx state machine
	 * gets into a state 0xb and if phy_restart happens in that
	 * state, BB would go hang. If RXSM is in 0xb state after
	 * first bb panic, ensure to disable the phy_restart.
	 */
	if (!((FUNC0(ah->bb_watchdog_last_status,
		  AR_PHY_WATCHDOG_RX_OFDM_SM) == 0xb) ||
	    ah->bb_hang_rx_ofdm))
		return;

	ah->bb_hang_rx_ofdm = true;
	val = FUNC1(ah, AR_PHY_RESTART);
	val &= ~AR_PHY_RESTART_ENA;

	FUNC2(ah, AR_PHY_RESTART, val);
}