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
typedef  scalar_t__ u8 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_TXGAIN_FORCE ; 
 int /*<<< orphan*/  AR_PHY_TX_FORCED_GAIN ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_START ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_START_DO_CAL ; 
 int /*<<< orphan*/  CALIBRATE ; 
 scalar_t__ FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC5(struct ath_hw *ah)
{
	struct ath_common *common = FUNC2(ah);
	u8 tx_gain_forced;

	tx_gain_forced = FUNC0(ah, AR_PHY_TX_FORCED_GAIN,
					AR_PHY_TXGAIN_FORCE);
	if (tx_gain_forced)
		FUNC1(ah, AR_PHY_TX_FORCED_GAIN,
			      AR_PHY_TXGAIN_FORCE, 0);

	FUNC1(ah, AR_PHY_TX_IQCAL_START,
		      AR_PHY_TX_IQCAL_START_DO_CAL, 1);

	if (!FUNC3(ah, AR_PHY_TX_IQCAL_START,
			AR_PHY_TX_IQCAL_START_DO_CAL, 0,
			AH_WAIT_TIMEOUT)) {
		FUNC4(common, CALIBRATE, "Tx IQ Cal is not completed\n");
		return false;
	}
	return true;
}