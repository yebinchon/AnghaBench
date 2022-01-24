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
struct TYPE_2__ {int /*<<< orphan*/  macVersion; } ;
struct ath_hw {int rxchainmask; int txchainmask; TYPE_1__ hw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_ANALOG_SWAP ; 
 int /*<<< orphan*/  AR_PHY_CAL_CHAINMASK ; 
 int /*<<< orphan*/  AR_PHY_RX_CHAINMASK ; 
 int /*<<< orphan*/  AR_PHY_SWAP_ALT_CHAIN ; 
 int /*<<< orphan*/  AR_SELFGEN_MASK ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_SREV_REVISION_5416_10 ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah)
{
	int rx_chainmask, tx_chainmask;

	rx_chainmask = ah->rxchainmask;
	tx_chainmask = ah->txchainmask;


	switch (rx_chainmask) {
	case 0x5:
		FUNC4(ah, AR_PHY_ANALOG_SWAP,
			    AR_PHY_SWAP_ALT_CHAIN);
	case 0x3:
		if (ah->hw_version.macVersion == AR_SREV_REVISION_5416_10) {
			FUNC5(ah, AR_PHY_RX_CHAINMASK, 0x7);
			FUNC5(ah, AR_PHY_CAL_CHAINMASK, 0x7);
			break;
		}
	case 0x1:
	case 0x2:
	case 0x7:
		FUNC1(ah);
		FUNC5(ah, AR_PHY_RX_CHAINMASK, rx_chainmask);
		FUNC5(ah, AR_PHY_CAL_CHAINMASK, rx_chainmask);
		break;
	default:
		FUNC1(ah);
		break;
	}

	FUNC5(ah, AR_SELFGEN_MASK, tx_chainmask);

	FUNC2(ah);

	if (tx_chainmask == 0x5) {
		FUNC4(ah, AR_PHY_ANALOG_SWAP,
			    AR_PHY_SWAP_ALT_CHAIN);
	}
	if (FUNC0(ah))
		FUNC5(ah, AR_PHY_ANALOG_SWAP,
			  FUNC3(ah, AR_PHY_ANALOG_SWAP) | 0x00000001);
}