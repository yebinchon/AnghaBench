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
struct ath_hw {int rxchainmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_CAL_CHAINMASK ; 
 int /*<<< orphan*/  AR_PHY_RX_CHAINMASK ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ath_hw *ah)
{
	int rx_chainmask = ah->rxchainmask;

	if ((rx_chainmask == 0x5) || (rx_chainmask == 0x3)) {
		FUNC0(ah, AR_PHY_RX_CHAINMASK, rx_chainmask);
		FUNC0(ah, AR_PHY_CAL_CHAINMASK, rx_chainmask);
	}
}