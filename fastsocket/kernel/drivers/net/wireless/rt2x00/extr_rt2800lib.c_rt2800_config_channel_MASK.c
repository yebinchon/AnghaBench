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
typedef  int u8 ;
typedef  unsigned int u32 ;
struct TYPE_4__ {int tx_chain_num; int rx_chain_num; } ;
struct TYPE_3__ {int rf; } ;
struct rt2x00_dev {int lna_gain; int /*<<< orphan*/  cap_flags; TYPE_2__ default_ant; TYPE_1__ chip; } ;
struct rf_channel {int channel; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {void* default_power2; void* default_power1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP3_HT40_MINUS ; 
 int /*<<< orphan*/  BBP49_UPDATE_FLAG ; 
 int /*<<< orphan*/  BBP4_BANDWIDTH ; 
 int /*<<< orphan*/  CAPABILITY_BT_COEXIST ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_LNA_A ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_LNA_BG ; 
 int /*<<< orphan*/  CH_BUSY_STA ; 
 int /*<<< orphan*/  CH_BUSY_STA_SEC ; 
 int /*<<< orphan*/  CH_IDLE_STA ; 
 int /*<<< orphan*/  REV_RT2860C ; 
#define  RF2020 141 
#define  RF3020 140 
#define  RF3021 139 
#define  RF3022 138 
#define  RF3052 137 
#define  RF3290 136 
#define  RF3320 135 
#define  RF3322 134 
#define  RF5360 133 
#define  RF5370 132 
#define  RF5372 131 
#define  RF5390 130 
#define  RF5392 129 
#define  RF5592 128 
 int /*<<< orphan*/  RFCSR30_RX_H20M ; 
 int /*<<< orphan*/  RFCSR30_TX_H20M ; 
 int /*<<< orphan*/  RFCSR3_VCOCAL_EN ; 
 int /*<<< orphan*/  RT2860 ; 
 int /*<<< orphan*/  RT3352 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  RT5592 ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  TX_BAND_CFG ; 
 int /*<<< orphan*/  TX_BAND_CFG_A ; 
 int /*<<< orphan*/  TX_BAND_CFG_BG ; 
 int /*<<< orphan*/  TX_BAND_CFG_HT40_MINUS ; 
 int /*<<< orphan*/  TX_PIN_CFG ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_A0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_A1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_G0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_G1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_RFTR_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_TRSW_EN ; 
 int FUNC2 (struct ieee80211_conf*) ; 
 int FUNC3 (struct ieee80211_conf*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct rt2x00_dev*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (struct rt2x00_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC20 (struct rt2x00_dev*,int const) ; 
 scalar_t__ FUNC21 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC26(struct rt2x00_dev *rt2x00dev,
				  struct ieee80211_conf *conf,
				  struct rf_channel *rf,
				  struct channel_info *info)
{
	u32 reg;
	unsigned int tx_pin;
	u8 bbp, rfcsr;

	if (rf->channel <= 14) {
		info->default_power1 = FUNC1(info->default_power1);
		info->default_power2 = FUNC1(info->default_power2);
	} else {
		info->default_power1 = FUNC0(info->default_power1);
		info->default_power2 = FUNC0(info->default_power2);
	}

	switch (rt2x00dev->chip.rf) {
	case RF2020:
	case RF3020:
	case RF3021:
	case RF3022:
	case RF3320:
		FUNC12(rt2x00dev, conf, rf, info);
		break;
	case RF3052:
		FUNC9(rt2x00dev, conf, rf, info);
		break;
	case RF3290:
		FUNC10(rt2x00dev, conf, rf, info);
		break;
	case RF3322:
		FUNC11(rt2x00dev, conf, rf, info);
		break;
	case RF5360:
	case RF5370:
	case RF5372:
	case RF5390:
	case RF5392:
		FUNC13(rt2x00dev, conf, rf, info);
		break;
	case RF5592:
		FUNC14(rt2x00dev, conf, rf, info);
		break;
	default:
		FUNC8(rt2x00dev, conf, rf, info);
	}

	if (FUNC20(rt2x00dev, RF3290) ||
	    FUNC20(rt2x00dev, RF3322) ||
	    FUNC20(rt2x00dev, RF5360) ||
	    FUNC20(rt2x00dev, RF5370) ||
	    FUNC20(rt2x00dev, RF5372) ||
	    FUNC20(rt2x00dev, RF5390) ||
	    FUNC20(rt2x00dev, RF5392)) {
		FUNC18(rt2x00dev, 30, &rfcsr);
		FUNC24(&rfcsr, RFCSR30_TX_H20M, 0);
		FUNC24(&rfcsr, RFCSR30_RX_H20M, 0);
		FUNC19(rt2x00dev, 30, rfcsr);

		FUNC18(rt2x00dev, 3, &rfcsr);
		FUNC24(&rfcsr, RFCSR3_VCOCAL_EN, 1);
		FUNC19(rt2x00dev, 3, rfcsr);
	}

	/*
	 * Change BBP settings
	 */
	if (FUNC21(rt2x00dev, RT3352)) {
		FUNC6(rt2x00dev, 27, 0x0);
		FUNC6(rt2x00dev, 66, 0x26 + rt2x00dev->lna_gain);
		FUNC6(rt2x00dev, 27, 0x20);
		FUNC6(rt2x00dev, 66, 0x26 + rt2x00dev->lna_gain);
	} else {
		FUNC6(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
		FUNC6(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
		FUNC6(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);
		FUNC6(rt2x00dev, 86, 0);
	}

	if (rf->channel <= 14) {
		if (!FUNC21(rt2x00dev, RT5390) &&
		    !FUNC21(rt2x00dev, RT5392)) {
			if (FUNC25(CAPABILITY_EXTERNAL_LNA_BG,
				     &rt2x00dev->cap_flags)) {
				FUNC6(rt2x00dev, 82, 0x62);
				FUNC6(rt2x00dev, 75, 0x46);
			} else {
				FUNC6(rt2x00dev, 82, 0x84);
				FUNC6(rt2x00dev, 75, 0x50);
			}
		}
	} else {
		if (FUNC21(rt2x00dev, RT3572))
			FUNC6(rt2x00dev, 82, 0x94);
		else
			FUNC6(rt2x00dev, 82, 0xf2);

		if (FUNC25(CAPABILITY_EXTERNAL_LNA_A, &rt2x00dev->cap_flags))
			FUNC6(rt2x00dev, 75, 0x46);
		else
			FUNC6(rt2x00dev, 75, 0x50);
	}

	FUNC16(rt2x00dev, TX_BAND_CFG, &reg);
	FUNC23(&reg, TX_BAND_CFG_HT40_MINUS, FUNC3(conf));
	FUNC23(&reg, TX_BAND_CFG_A, rf->channel > 14);
	FUNC23(&reg, TX_BAND_CFG_BG, rf->channel <= 14);
	FUNC17(rt2x00dev, TX_BAND_CFG, reg);

	if (FUNC21(rt2x00dev, RT3572))
		FUNC19(rt2x00dev, 8, 0);

	tx_pin = 0;

	/* Turn on unused PA or LNA when not using 1T or 1R */
	if (rt2x00dev->default_ant.tx_chain_num == 2) {
		FUNC23(&tx_pin, TX_PIN_CFG_PA_PE_A1_EN,
				   rf->channel > 14);
		FUNC23(&tx_pin, TX_PIN_CFG_PA_PE_G1_EN,
				   rf->channel <= 14);
	}

	/* Turn on unused PA or LNA when not using 1T or 1R */
	if (rt2x00dev->default_ant.rx_chain_num == 2) {
		FUNC23(&tx_pin, TX_PIN_CFG_LNA_PE_A1_EN, 1);
		FUNC23(&tx_pin, TX_PIN_CFG_LNA_PE_G1_EN, 1);
	}

	FUNC23(&tx_pin, TX_PIN_CFG_LNA_PE_A0_EN, 1);
	FUNC23(&tx_pin, TX_PIN_CFG_LNA_PE_G0_EN, 1);
	FUNC23(&tx_pin, TX_PIN_CFG_RFTR_EN, 1);
	FUNC23(&tx_pin, TX_PIN_CFG_TRSW_EN, 1);
	if (FUNC25(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags))
		FUNC23(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN, 1);
	else
		FUNC23(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN,
				   rf->channel <= 14);
	FUNC23(&tx_pin, TX_PIN_CFG_PA_PE_A0_EN, rf->channel > 14);

	FUNC17(rt2x00dev, TX_PIN_CFG, tx_pin);

	if (FUNC21(rt2x00dev, RT3572))
		FUNC19(rt2x00dev, 8, 0x80);

	if (FUNC21(rt2x00dev, RT5592)) {
		FUNC6(rt2x00dev, 195, 141);
		FUNC6(rt2x00dev, 196, FUNC2(conf) ? 0x10 : 0x1a);

		/* AGC init */
		reg = (rf->channel <= 14 ? 0x1c : 0x24) + 2 * rt2x00dev->lna_gain;
		FUNC7(rt2x00dev, 66, reg);

		FUNC15(rt2x00dev, rf->channel);
	}

	FUNC5(rt2x00dev, 4, &bbp);
	FUNC24(&bbp, BBP4_BANDWIDTH, 2 * FUNC2(conf));
	FUNC6(rt2x00dev, 4, bbp);

	FUNC5(rt2x00dev, 3, &bbp);
	FUNC24(&bbp, BBP3_HT40_MINUS, FUNC3(conf));
	FUNC6(rt2x00dev, 3, bbp);

	if (FUNC22(rt2x00dev, RT2860, REV_RT2860C)) {
		if (FUNC2(conf)) {
			FUNC6(rt2x00dev, 69, 0x1a);
			FUNC6(rt2x00dev, 70, 0x0a);
			FUNC6(rt2x00dev, 73, 0x16);
		} else {
			FUNC6(rt2x00dev, 69, 0x16);
			FUNC6(rt2x00dev, 70, 0x08);
			FUNC6(rt2x00dev, 73, 0x11);
		}
	}

	FUNC4(1);

	/*
	 * Clear channel statistic counters
	 */
	FUNC16(rt2x00dev, CH_IDLE_STA, &reg);
	FUNC16(rt2x00dev, CH_BUSY_STA, &reg);
	FUNC16(rt2x00dev, CH_BUSY_STA_SEC, &reg);

	/*
	 * Clear update flag
	 */
	if (FUNC21(rt2x00dev, RT3352)) {
		FUNC5(rt2x00dev, 49, &bbp);
		FUNC24(&bbp, BBP49_UPDATE_FLAG, 0);
		FUNC6(rt2x00dev, 49, bbp);
	}
}