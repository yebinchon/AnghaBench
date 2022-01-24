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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_cal_list {TYPE_1__* calData; } ;
struct TYPE_2__ {int calType; int /*<<< orphan*/  calCountMax; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_CALMODE ; 
 int /*<<< orphan*/  AR_PHY_CALMODE_IQ ; 
 int /*<<< orphan*/  AR_PHY_TIMING4 ; 
 int /*<<< orphan*/  AR_PHY_TIMING4_DO_CAL ; 
 int /*<<< orphan*/  AR_PHY_TIMING4_IQCAL_LOG_COUNT_MAX ; 
 int /*<<< orphan*/  CALIBRATE ; 
#define  IQ_MISMATCH_CAL 128 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,char*) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah,
					struct ath9k_cal_list *currCal)
{
	struct ath_common *common = FUNC3(ah);

	/* Select calibration to run */
	switch (currCal->calData->calType) {
	case IQ_MISMATCH_CAL:
		/*
		 * Start calibration with
		 * 2^(INIT_IQCAL_LOG_COUNT_MAX+1) samples
		 */
		FUNC0(ah, AR_PHY_TIMING4,
			      AR_PHY_TIMING4_IQCAL_LOG_COUNT_MAX,
			      currCal->calData->calCountMax);
		FUNC2(ah, AR_PHY_CALMODE, AR_PHY_CALMODE_IQ);

		FUNC4(common, CALIBRATE,
			"starting IQ Mismatch Calibration\n");

		/* Kick-off cal */
		FUNC1(ah, AR_PHY_TIMING4, AR_PHY_TIMING4_DO_CAL);
		break;
	default:
		FUNC5(common, "Invalid calibration type\n");
		break;
	}
}