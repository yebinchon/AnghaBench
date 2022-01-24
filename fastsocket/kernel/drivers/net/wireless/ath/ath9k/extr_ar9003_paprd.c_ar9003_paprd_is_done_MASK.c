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

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_AGC2_PWR ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int PAPRD_IDEAL_AGC2_PWR_RANGE ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

bool FUNC4(struct ath_hw *ah)
{
	int paprd_done, agc2_pwr;

	paprd_done = FUNC1(ah, AR_PHY_PAPRD_TRAINER_STAT1,
				AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE);

	if (FUNC0(ah))
		goto exit;

	if (paprd_done == 0x1) {
		agc2_pwr = FUNC1(ah, AR_PHY_PAPRD_TRAINER_STAT1,
				AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_AGC2_PWR);

		FUNC3(FUNC2(ah), CALIBRATE,
			"AGC2_PWR = 0x%x training done = 0x%x\n",
			agc2_pwr, paprd_done);
	/*
	 * agc2_pwr range should not be less than 'IDEAL_AGC2_PWR_CHANGE'
	 * when the training is completely done, otherwise retraining is
	 * done to make sure the value is in ideal range
	 */
		if (agc2_pwr <= PAPRD_IDEAL_AGC2_PWR_RANGE)
			paprd_done = 0;
	}
exit:
	return !!paprd_done;
}