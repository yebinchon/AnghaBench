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
typedef  int u32 ;
struct ath_hw {int modes_index; int /*<<< orphan*/  enabled_cals; int /*<<< orphan*/  txchainmask; int /*<<< orphan*/  rxchainmask; int /*<<< orphan*/  iniCckfirJapan2484; int /*<<< orphan*/  iniAdditional; int /*<<< orphan*/  iniModesFastClock; int /*<<< orphan*/  iniModesTxGain; int /*<<< orphan*/  ini_modes_rx_gain_bounds; int /*<<< orphan*/  iniModesRxGain; int /*<<< orphan*/  ini_radio_post_sys2ant; int /*<<< orphan*/ * iniRadio; int /*<<< orphan*/ * iniBB; int /*<<< orphan*/ * iniMac; int /*<<< orphan*/ * iniSOC; } ;
struct ath9k_channel {int chanmode; int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_GLB_SWREG_DISCONT_EN_BT_WLAN ; 
 int /*<<< orphan*/  AR_GLB_SWREG_DISCONT_MODE ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_CTL ; 
 int AR_PHY_CL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 unsigned int ATH_INI_NUM_SPLIT ; 
 unsigned int ATH_INI_POST ; 
#define  CHANNEL_A 136 
#define  CHANNEL_A_HT20 135 
#define  CHANNEL_A_HT40MINUS 134 
#define  CHANNEL_A_HT40PLUS 133 
#define  CHANNEL_B 132 
#define  CHANNEL_G 131 
#define  CHANNEL_G_HT20 130 
#define  CHANNEL_G_HT40MINUS 129 
#define  CHANNEL_G_HT40PLUS 128 
 int EINVAL ; 
 scalar_t__ FUNC4 (struct ath_hw*,struct ath9k_channel*) ; 
 int FUNC5 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  TX_CL_CAL ; 
 int /*<<< orphan*/  TX_IQ_CAL ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,struct ath9k_channel*) ; 
 int FUNC13 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,struct ath9k_channel*,int) ; 

__attribute__((used)) static int FUNC15(struct ath_hw *ah,
				 struct ath9k_channel *chan)
{
	unsigned int regWrites = 0, i;
	u32 modesIndex;

	switch (chan->chanmode) {
	case CHANNEL_A:
	case CHANNEL_A_HT20:
		modesIndex = 1;
		break;
	case CHANNEL_A_HT40PLUS:
	case CHANNEL_A_HT40MINUS:
		modesIndex = 2;
		break;
	case CHANNEL_G:
	case CHANNEL_G_HT20:
	case CHANNEL_B:
		modesIndex = 4;
		break;
	case CHANNEL_G_HT40PLUS:
	case CHANNEL_G_HT40MINUS:
		modesIndex = 3;
		break;

	default:
		return -EINVAL;
	}

	for (i = 0; i < ATH_INI_NUM_SPLIT; i++) {
		FUNC10(ah, &ah->iniSOC[i], modesIndex);
		FUNC10(ah, &ah->iniMac[i], modesIndex);
		FUNC10(ah, &ah->iniBB[i], modesIndex);
		FUNC10(ah, &ah->iniRadio[i], modesIndex);
		if (i == ATH_INI_POST && FUNC1(ah))
			FUNC10(ah,
					   &ah->ini_radio_post_sys2ant,
					   modesIndex);
	}

	FUNC8(&ah->iniModesRxGain, 1, regWrites);
	if (FUNC2(ah))
		FUNC8(&ah->ini_modes_rx_gain_bounds, modesIndex,
				regWrites);

	if (FUNC2(ah)) {
		int modes_txgain_index;

		modes_txgain_index = FUNC13(ah, chan);
		if (modes_txgain_index < 0)
			return -EINVAL;

		FUNC8(&ah->iniModesTxGain, modes_txgain_index,
				regWrites);
	} else {
		FUNC8(&ah->iniModesTxGain, modesIndex, regWrites);
	}

	/*
	 * For 5GHz channels requiring Fast Clock, apply
	 * different modal values.
	 */
	if (FUNC4(ah, chan))
		FUNC8(&ah->iniModesFastClock,
				modesIndex, regWrites);

	FUNC8(&ah->iniAdditional, 1, regWrites);

	if (chan->channel == 2484)
		FUNC10(ah, &ah->iniCckfirJapan2484, 1);

	if (FUNC0(ah) || FUNC3(ah))
		FUNC7(ah, AR_GLB_SWREG_DISCONT_MODE,
			  AR_GLB_SWREG_DISCONT_EN_BT_WLAN);

	ah->modes_index = modesIndex;
	FUNC9(ah);
	FUNC12(ah, chan);
	FUNC11(ah, ah->rxchainmask, ah->txchainmask);
	FUNC14(ah, chan, false);

	if (FUNC0(ah) || FUNC3(ah)) {
		if (FUNC6(ah, AR_PHY_TX_IQCAL_CONTROL_0,
				   AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL))
			ah->enabled_cals |= TX_IQ_CAL;
		else
			ah->enabled_cals &= ~TX_IQ_CAL;

		if (FUNC5(ah, AR_PHY_CL_CAL_CTL) & AR_PHY_CL_CAL_ENABLE)
			ah->enabled_cals |= TX_CL_CAL;
		else
			ah->enabled_cals &= ~TX_CL_CAL;
	}

	return 0;
}