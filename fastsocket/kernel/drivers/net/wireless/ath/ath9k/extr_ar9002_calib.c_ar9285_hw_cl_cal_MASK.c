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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_ADC_CTL ; 
 int /*<<< orphan*/  AR_PHY_ADC_CTL_OFF_PWDADC ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_CAL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_FLTR_CAL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_CTL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_FC_DYN2040_EN ; 
 int /*<<< orphan*/  AR_PHY_PARALLEL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TPCRG1 ; 
 int /*<<< orphan*/  AR_PHY_TPCRG1_PD_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TURBO ; 
 int /*<<< orphan*/  CALIBRATE ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC6(struct ath_hw *ah, struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC3(ah);

	FUNC2(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
	if (FUNC0(chan)) {
		FUNC2(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
		FUNC2(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
		FUNC1(ah, AR_PHY_AGC_CONTROL,
			    AR_PHY_AGC_CONTROL_FLTR_CAL);
		FUNC1(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
		FUNC2(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
		if (!FUNC4(ah, AR_PHY_AGC_CONTROL,
				  AR_PHY_AGC_CONTROL_CAL, 0, AH_WAIT_TIMEOUT)) {
			FUNC5(common, CALIBRATE,
				"offset calibration failed to complete in %d ms; noisy environment?\n",
				AH_WAIT_TIMEOUT / 1000);
			return false;
		}
		FUNC1(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
		FUNC1(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
		FUNC1(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
	}
	FUNC1(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
	FUNC2(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);
	FUNC2(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
	FUNC2(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
	if (!FUNC4(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL,
			  0, AH_WAIT_TIMEOUT)) {
		FUNC5(common, CALIBRATE,
			"offset calibration failed to complete in %d ms; noisy environment?\n",
			AH_WAIT_TIMEOUT / 1000);
		return false;
	}

	FUNC2(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
	FUNC1(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
	FUNC1(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);

	return true;
}