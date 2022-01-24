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
struct ath_hw {int supp_cals; TYPE_1__* caldata; int /*<<< orphan*/ * cal_list_curr; int /*<<< orphan*/ * cal_list; int /*<<< orphan*/  iq_caldata; int /*<<< orphan*/  adcdc_caldata; int /*<<< orphan*/  adcgain_caldata; int /*<<< orphan*/ * cal_list_last; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int nfcal_pending; scalar_t__ CalValid; } ;

/* Variables and functions */
 int ADC_DC_CAL ; 
 int ADC_GAIN_CAL ; 
 int AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_ADC_CTL ; 
 int /*<<< orphan*/  AR_PHY_ADC_CTL_OFF_PWDADC ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int AR_PHY_AGC_CONTROL_CAL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_FLTR_CAL ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int IQ_MISMATCH_CAL ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (struct ath_hw*,struct ath9k_channel*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,struct ath9k_channel*) ; 
 struct ath_common* FUNC18 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool FUNC22(struct ath_hw *ah, struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC18(ah);

	if (FUNC2(ah)) {
		if (!FUNC16(ah, chan))
			return false;
	} else if (FUNC4(ah) && FUNC5(ah)) {
		if (!FUNC17(ah, chan))
			return false;
	} else {
		if (FUNC3(ah)) {
			if (!FUNC7(ah))
				FUNC10(ah, AR_PHY_ADC_CTL,
					    AR_PHY_ADC_CTL_OFF_PWDADC);
			FUNC12(ah, AR_PHY_AGC_CONTROL,
				    AR_PHY_AGC_CONTROL_FLTR_CAL);
		}

		/* Calibrate the AGC */
		FUNC13(ah, AR_PHY_AGC_CONTROL,
			  FUNC11(ah, AR_PHY_AGC_CONTROL) |
			  AR_PHY_AGC_CONTROL_CAL);

		/* Poll for offset calibration complete */
		if (!FUNC20(ah, AR_PHY_AGC_CONTROL,
				   AR_PHY_AGC_CONTROL_CAL,
				   0, AH_WAIT_TIMEOUT)) {
			FUNC21(common, CALIBRATE,
				"offset calibration failed to complete in %d ms; noisy environment?\n",
				AH_WAIT_TIMEOUT / 1000);
			return false;
		}

		if (FUNC3(ah)) {
			if (!FUNC7(ah))
				FUNC12(ah, AR_PHY_ADC_CTL,
					    AR_PHY_ADC_CTL_OFF_PWDADC);
			FUNC10(ah, AR_PHY_AGC_CONTROL,
				    AR_PHY_AGC_CONTROL_FLTR_CAL);
		}
	}

	/* Do PA Calibration */
	FUNC15(ah, true);

	if (ah->caldata)
		ah->caldata->nfcal_pending = true;

	ah->cal_list = ah->cal_list_last = ah->cal_list_curr = NULL;

	/* Enable IQ, ADC Gain and ADC DC offset CALs */
	if (FUNC0(ah) || FUNC1(ah)) {
		ah->supp_cals = IQ_MISMATCH_CAL;

		if (FUNC1(ah))
			ah->supp_cals |= ADC_GAIN_CAL | ADC_DC_CAL;

		if (FUNC6(ah))
			ah->supp_cals &= ~ADC_GAIN_CAL;

		if (FUNC14(ah, chan, ADC_GAIN_CAL)) {
			FUNC8(&ah->adcgain_caldata);
			FUNC9(ah, &ah->adcgain_caldata);
			FUNC21(common, CALIBRATE,
					"enabling ADC Gain Calibration\n");
		}

		if (FUNC14(ah, chan, ADC_DC_CAL)) {
			FUNC8(&ah->adcdc_caldata);
			FUNC9(ah, &ah->adcdc_caldata);
			FUNC21(common, CALIBRATE,
					"enabling ADC DC Calibration\n");
		}

		if (FUNC14(ah, chan, IQ_MISMATCH_CAL)) {
			FUNC8(&ah->iq_caldata);
			FUNC9(ah, &ah->iq_caldata);
			FUNC21(common, CALIBRATE, "enabling IQ Calibration\n");
		}

		ah->cal_list_curr = ah->cal_list;

		if (ah->cal_list_curr)
			FUNC19(ah, ah->cal_list_curr);
	}

	if (ah->caldata)
		ah->caldata->CalValid = 0;

	return true;
}