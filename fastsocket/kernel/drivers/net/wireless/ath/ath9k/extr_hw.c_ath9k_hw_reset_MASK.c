#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ tx_intr_mitigation; scalar_t__ rx_intr_mitigation; } ;
struct TYPE_5__ {int hw_caps; } ;
struct ath_hw {int chip_fullsleep; int paprd_table_write_done; int htc_reset_init; scalar_t__ shared_chain_lnadiv; TYPE_3__ config; int /*<<< orphan*/  rfkill_gpio; TYPE_2__ caps; int /*<<< orphan*/  opmode; TYPE_1__* eep_ops; int /*<<< orphan*/  noise; struct ath9k_hw_cal_data* caldata; scalar_t__ curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {scalar_t__ channel; scalar_t__ channelFlags; scalar_t__ chanmode; int paprd_packet_sent; int done_txiqcal_once; int done_txclcal_once; } ;
struct ath9k_channel {scalar_t__ channel; scalar_t__ channelFlags; scalar_t__ chanmode; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_board_values ) (struct ath_hw*,struct ath9k_channel*) ;scalar_t__ (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int AR9271_GATE_MAC_CTL ; 
 int AR9271_RADIO_RF_RST ; 
 int /*<<< orphan*/  AR9271_RESET_POWER_DOWN_CONTROL ; 
 int AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL ; 
 int /*<<< orphan*/  AR_AHB_CUSTOM_BURST_EN ; 
 int /*<<< orphan*/  AR_AHB_MODE ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_LNADIV ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_LNADIV_FORCE_ON ; 
 int /*<<< orphan*/  AR_CFG_LED ; 
 int AR_CFG_LED_ASSOC_CTL ; 
 int AR_CFG_LED_BLINK_SLOW ; 
 int AR_CFG_LED_BLINK_THRESH_SEL ; 
 int AR_CFG_LED_MODE_SEL ; 
 int AR_CFG_SCLK_32KHZ ; 
 int /*<<< orphan*/  AR_DEF_ANTENNA ; 
 int /*<<< orphan*/  AR_GPIO_INPUT_EN_VAL ; 
 int /*<<< orphan*/  AR_GPIO_JTAG_DISABLE ; 
 int /*<<< orphan*/  AR_MAC_PCU_LOGIC_ANALYZER ; 
 int /*<<< orphan*/  AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768 ; 
 int /*<<< orphan*/  AR_OBS ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2 ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2_ENABLE_AGGWEP ; 
 int /*<<< orphan*/  AR_RIMT ; 
 int /*<<< orphan*/  AR_RIMT_FIRST ; 
 int /*<<< orphan*/  AR_RIMT_LAST ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int AR_STA_ID1_BASE_RATE_11B ; 
 int /*<<< orphan*/  AR_STA_ID1_PRESERVE_SEQNUM ; 
 int /*<<< orphan*/  AR_TIMT ; 
 int /*<<< orphan*/  AR_TIMT_FIRST ; 
 int /*<<< orphan*/  AR_TIMT_LAST ; 
 int ATH9K_HW_CAP_RFSILENT ; 
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int /*<<< orphan*/  EEP_OL_PWRCTRL ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath9k_channel*) ; 
 scalar_t__ FUNC10 (struct ath9k_channel*) ; 
 scalar_t__ FUNC11 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int FUNC13 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct ath_hw*) ; 
 scalar_t__ FUNC21 (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*) ; 
 int /*<<< orphan*/  FUNC22 (struct ath_hw*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC24 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC26 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC27 (struct ath_hw*) ; 
 scalar_t__ FUNC28 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC29 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct ath_hw*,struct ath9k_channel*) ; 
 struct ath_common* FUNC31 (struct ath_hw*) ; 
 int FUNC32 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC33 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC34 (struct ath_hw*,scalar_t__) ; 
 scalar_t__ FUNC35 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC36 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC37 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC38 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC39 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC40 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC42 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC43 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC44 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC45 (struct ath_hw*) ; 
 scalar_t__ FUNC46 (struct ath_hw*) ; 
 int FUNC47 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC48 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC49 (struct ath_hw*) ; 
 int FUNC50 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC51 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC52 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC53 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC54 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC56 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC57 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC58 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC59 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC60 (struct ath9k_hw_cal_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC61 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC62 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC63 (int) ; 

int FUNC64(struct ath_hw *ah, struct ath9k_channel *chan,
		   struct ath9k_hw_cal_data *caldata, bool fastcc)
{
	struct ath_common *common = FUNC31(ah);
	u32 saveLedState;
	u32 saveDefAntenna;
	u32 macStaId1;
	u64 tsf = 0;
	int r;
	bool start_mci_reset = false;
	bool save_fullsleep = ah->chip_fullsleep;

	if (FUNC46(ah)) {
		start_mci_reset = FUNC23(ah, chan);
		if (start_mci_reset)
			return 0;
	}

	if (!FUNC54(ah, ATH9K_PM_AWAKE))
		return -EIO;

	if (ah->curchan && !ah->chip_fullsleep)
		FUNC34(ah, ah->curchan);

	ah->caldata = caldata;
	if (caldata && (chan->channel != caldata->channel ||
			chan->channelFlags != caldata->channelFlags ||
			chan->chanmode != caldata->chanmode)) {
		/* Operating channel changed, reset channel calibration data */
		FUNC60(caldata, 0, sizeof(*caldata));
		FUNC58(ah, chan);
	} else if (caldata) {
		caldata->paprd_packet_sent = false;
	}
	ah->noise = FUNC33(ah, chan);

	if (fastcc) {
		r = FUNC32(ah, chan);
		if (!r)
			return r;
	}

	if (FUNC46(ah))
		FUNC24(ah, save_fullsleep);

	saveDefAntenna = FUNC13(ah, AR_DEF_ANTENNA);
	if (saveDefAntenna == 0)
		saveDefAntenna = 1;

	macStaId1 = FUNC13(ah, AR_STA_ID1) & AR_STA_ID1_BASE_RATE_11B;

	/* For chips on which RTC reset is done, save TSF before it gets cleared */
	if (FUNC0(ah) ||
	    (FUNC2(ah) && ah->eep_ops->get_eeprom(ah, EEP_OL_PWRCTRL)))
		tsf = FUNC35(ah);

	saveLedState = FUNC13(ah, AR_CFG_LED) &
		(AR_CFG_LED_ASSOC_CTL | AR_CFG_LED_MODE_SEL |
		 AR_CFG_LED_BLINK_THRESH_SEL | AR_CFG_LED_BLINK_SLOW);

	FUNC45(ah);

	ah->paprd_table_write_done = false;

	/* Only required on the first reset */
	if (FUNC1(ah) && ah->htc_reset_init) {
		FUNC16(ah,
			  AR9271_RESET_POWER_DOWN_CONTROL,
			  AR9271_RADIO_RF_RST);
		FUNC63(50);
	}

	if (!FUNC30(ah, chan)) {
		FUNC59(common, "Chip reset failed\n");
		return -EINVAL;
	}

	/* Only required on the first reset */
	if (FUNC1(ah) && ah->htc_reset_init) {
		ah->htc_reset_init = false;
		FUNC16(ah,
			  AR9271_RESET_POWER_DOWN_CONTROL,
			  AR9271_GATE_MAC_CTL);
		FUNC63(50);
	}

	/* Restore TSF */
	if (tsf)
		FUNC55(ah, tsf);

	if (FUNC3(ah))
		FUNC15(ah, AR_GPIO_INPUT_EN_VAL, AR_GPIO_JTAG_DISABLE);

	if (!FUNC6(ah))
		FUNC17(ah);

	r = FUNC47(ah, chan);
	if (r)
		return r;

	if (FUNC46(ah))
		FUNC22(ah, false, FUNC9(chan), save_fullsleep);

	/*
	 * Some AR91xx SoC devices frequently fail to accept TSF writes
	 * right after the chip reset. When that happens, write a new
	 * value after the initvals have been applied, with an offset
	 * based on measured time difference
	 */
	if (FUNC0(ah) && (FUNC35(ah) < tsf)) {
		tsf += 1500;
		FUNC55(ah, tsf);
	}

	FUNC41(ah);

	if (FUNC11(chan) || FUNC10(chan))
		FUNC52(ah, chan);

	FUNC56(ah, chan);
	ah->eep_ops->set_board_values(ah, chan);

	FUNC48(ah, macStaId1, saveDefAntenna);

	r = FUNC50(ah, chan);
	if (r)
		return r;

	FUNC51(ah);

	FUNC43(ah);
	FUNC40(ah, ah->opmode);
	FUNC25(ah);
	FUNC42(ah);

	if (ah->caps.hw_caps & ATH9K_HW_CAP_RFSILENT)
		FUNC29(ah, ah->rfkill_gpio);

	FUNC39(ah);

	if (FUNC4(ah) && FUNC5(ah)) {
		FUNC15(ah, AR_MAC_PCU_LOGIC_ANALYZER,
			    AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768);
		FUNC14(ah, AR_AHB_MODE, AR_AHB_CUSTOM_BURST_EN,
			      AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL);
		FUNC15(ah, AR_PCU_MISC_MODE2,
			    AR_PCU_MISC_MODE2_ENABLE_AGGWEP);
	}

	FUNC15(ah, AR_STA_ID1, AR_STA_ID1_PRESERVE_SEQNUM);

	FUNC53(ah);

	if (!FUNC46(ah))
		FUNC16(ah, AR_OBS, 8);

	if (ah->config.rx_intr_mitigation) {
		FUNC14(ah, AR_RIMT, AR_RIMT_LAST, 500);
		FUNC14(ah, AR_RIMT, AR_RIMT_FIRST, 2000);
	}

	if (ah->config.tx_intr_mitigation) {
		FUNC14(ah, AR_TIMT, AR_TIMT_LAST, 300);
		FUNC14(ah, AR_TIMT, AR_TIMT_FIRST, 750);
	}

	FUNC36(ah, chan);

	if (caldata) {
		caldata->done_txiqcal_once = false;
		caldata->done_txclcal_once = false;
	}
	if (!FUNC37(ah, chan))
		return -EIO;

	if (FUNC46(ah) && FUNC21(ah, chan, caldata))
		return -EIO;

	FUNC8(ah);

	FUNC49(ah);
	FUNC16(ah, AR_CFG_LED, saveLedState | AR_CFG_SCLK_32KHZ);

	FUNC12(ah);

	FUNC38(ah);

	if (FUNC28(ah))
		FUNC27(ah);

	if (FUNC46(ah))
		FUNC20(ah);

	FUNC44(ah, chan);
	FUNC57(ah, true);

	if (FUNC6(ah)) {
		FUNC18(ah);
		FUNC19(ah);
	}

	FUNC26(ah);

	if (FUNC7(ah) && ah->shared_chain_lnadiv)
		FUNC15(ah, AR_BTCOEX_WL_LNADIV, AR_BTCOEX_WL_LNADIV_FORCE_ON);

	return 0;
}