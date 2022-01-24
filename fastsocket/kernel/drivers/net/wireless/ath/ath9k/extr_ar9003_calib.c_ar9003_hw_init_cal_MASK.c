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
typedef  int u32 ;
struct TYPE_2__ {int hw_caps; int /*<<< orphan*/  tx_chainmask; int /*<<< orphan*/  rx_chainmask; } ;
struct ath_hw {int enabled_cals; int ah_flags; int /*<<< orphan*/ * cal_list_curr; int /*<<< orphan*/ * cal_list; int /*<<< orphan*/  iq_caldata; int /*<<< orphan*/ * cal_list_last; int /*<<< orphan*/  txchainmask; int /*<<< orphan*/  rxchainmask; TYPE_1__ caps; struct ath9k_hw_cal_data* caldata; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {scalar_t__ CalValid; scalar_t__ done_txiqcal_once; scalar_t__ done_txclcal_once; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AH_FASTCC ; 
 int AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE ; 
 int AR_PHY_ACTIVE_DIS ; 
 int AR_PHY_ACTIVE_EN ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int AR_PHY_AGC_CONTROL_CAL ; 
 int AR_PHY_AGC_CONTROL_FLTR_CAL ; 
 int AR_PHY_AGC_CONTROL_OFFSET_CAL ; 
 int AR_PHY_AGC_CONTROL_PKDET_CAL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_CTL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_1 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT ; 
 int ATH9K_HW_CAP_RTT ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int /*<<< orphan*/  DELPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 scalar_t__ FUNC4 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int TX_CL_CAL ; 
 int TX_IQ_CAL ; 
 int TX_IQ_ON_AGC_CAL ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ath_hw*) ; 
 int FUNC21 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC22 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC23 (struct ath_hw*,int*) ; 
 struct ath_common* FUNC24 (struct ath_hw*) ; 
 scalar_t__ FUNC25 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC26 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC28 (struct ath_hw*) ; 
 int FUNC29 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC31 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 

__attribute__((used)) static bool FUNC33(struct ath_hw *ah,
			       struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC24(ah);
	struct ath9k_hw_cal_data *caldata = ah->caldata;
	bool txiqcal_done = false;
	bool is_reusable = true, status = true;
	bool run_rtt_cal = false, run_agc_cal, sep_iq_cal = false;
	bool rtt = !!(ah->caps.hw_caps & ATH9K_HW_CAP_RTT);
	u32 agc_ctrl = 0, agc_supp_cals = AR_PHY_AGC_CONTROL_OFFSET_CAL |
					  AR_PHY_AGC_CONTROL_FLTR_CAL   |
					  AR_PHY_AGC_CONTROL_PKDET_CAL;

	/* Use chip chainmask only for calibration */
	FUNC18(ah, ah->caps.rx_chainmask, ah->caps.tx_chainmask);

	if (rtt) {
		if (!FUNC16(ah, chan))
			run_rtt_cal = true;

		if (run_rtt_cal)
			FUNC30(common, CALIBRATE, "RTT calibration to be done\n");
	}

	run_agc_cal = run_rtt_cal;

	if (run_rtt_cal) {
		FUNC14(ah);
		FUNC17(ah, 0x00);
		FUNC12(ah);
	}

	if (rtt && !run_rtt_cal) {
		agc_ctrl = FUNC6(ah, AR_PHY_AGC_CONTROL);
		agc_supp_cals &= agc_ctrl;
		agc_ctrl &= ~(AR_PHY_AGC_CONTROL_OFFSET_CAL |
			     AR_PHY_AGC_CONTROL_FLTR_CAL |
			     AR_PHY_AGC_CONTROL_PKDET_CAL);
		FUNC9(ah, AR_PHY_AGC_CONTROL, agc_ctrl);
	}

	if (ah->enabled_cals & TX_CL_CAL) {
		if (caldata && caldata->done_txclcal_once)
			FUNC5(ah, AR_PHY_CL_CAL_CTL,
				    AR_PHY_CL_CAL_ENABLE);
		else {
			FUNC8(ah, AR_PHY_CL_CAL_CTL,
				    AR_PHY_CL_CAL_ENABLE);
			run_agc_cal = true;
		}
	}

	if ((FUNC3(chan) || FUNC4(chan)) ||
	    !(ah->enabled_cals & TX_IQ_CAL))
		goto skip_tx_iqcal;

	/* Do Tx IQ Calibration */
	FUNC7(ah, AR_PHY_TX_IQCAL_CONTROL_1,
		      AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT,
		      DELPT);

	/*
	 * For AR9485 or later chips, TxIQ cal runs as part of
	 * AGC calibration
	 */
	if (ah->enabled_cals & TX_IQ_ON_AGC_CAL) {
		if (caldata && !caldata->done_txiqcal_once)
			FUNC8(ah, AR_PHY_TX_IQCAL_CONTROL_0,
				    AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);
		else
			FUNC5(ah, AR_PHY_TX_IQCAL_CONTROL_0,
				    AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);
		txiqcal_done = run_agc_cal = true;
	} else if (caldata && !caldata->done_txiqcal_once) {
		run_agc_cal = true;
		sep_iq_cal = true;
	}

skip_tx_iqcal:
	if (FUNC25(ah) && FUNC2(chan) && run_agc_cal)
		FUNC23(ah, &is_reusable);

	if (sep_iq_cal) {
		txiqcal_done = FUNC21(ah);
		FUNC9(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_DIS);
		FUNC32(5);
		FUNC9(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);
	}

	if (run_agc_cal || !(ah->ah_flags & AH_FASTCC)) {
		/* Calibrate the AGC */
		FUNC9(ah, AR_PHY_AGC_CONTROL,
			  FUNC6(ah, AR_PHY_AGC_CONTROL) |
			  AR_PHY_AGC_CONTROL_CAL);

		/* Poll for offset calibration complete */
		status = FUNC29(ah, AR_PHY_AGC_CONTROL,
				       AR_PHY_AGC_CONTROL_CAL,
				       0, AH_WAIT_TIMEOUT);

		FUNC11(ah, chan);
	}

	if (FUNC25(ah) && FUNC2(chan) && run_agc_cal)
		FUNC22(ah);

	if (rtt && !run_rtt_cal) {
		agc_ctrl |= agc_supp_cals;
		FUNC9(ah, AR_PHY_AGC_CONTROL, agc_ctrl);
	}

	if (!status) {
		if (run_rtt_cal)
			FUNC13(ah);

		FUNC30(common, CALIBRATE,
			"offset calibration failed to complete in %d ms; noisy environment?\n",
			AH_WAIT_TIMEOUT / 1000);
		return false;
	}

	if (txiqcal_done)
		FUNC19(ah, is_reusable);
	else if (caldata && caldata->done_txiqcal_once)
		FUNC20(ah);

	FUNC10(ah, is_reusable);

	if (run_rtt_cal && caldata) {
		if (is_reusable) {
			if (!FUNC28(ah))
				FUNC31(FUNC24(ah),
					"Could not stop baseband\n");
			else
				FUNC15(ah);

			FUNC27(ah);
		}

		FUNC13(ah);
	}

	/* Revert chainmask to runtime parameters */
	FUNC18(ah, ah->rxchainmask, ah->txchainmask);

	/* Initialize list pointers */
	ah->cal_list = ah->cal_list_last = ah->cal_list_curr = NULL;

	FUNC0(&ah->iq_caldata);
	FUNC1(ah, &ah->iq_caldata);
	FUNC30(common, CALIBRATE, "enabling IQ Calibration\n");

	/* Initialize current pointer to first element in list */
	ah->cal_list_curr = ah->cal_list;

	if (ah->cal_list_curr)
		FUNC26(ah, ah->cal_list_curr);

	if (caldata)
		caldata->CalValid = 0;

	return true;
}