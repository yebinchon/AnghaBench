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
struct chan_centers {int synth_center; } ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_HALFGI ; 
 int /*<<< orphan*/  AR_PHY_HALFGI_DSC_EXP ; 
 int /*<<< orphan*/  AR_PHY_HALFGI_DSC_MAN ; 
 int /*<<< orphan*/  AR_PHY_TIMING3 ; 
 int /*<<< orphan*/  AR_PHY_TIMING3_DSC_EXP ; 
 int /*<<< orphan*/  AR_PHY_TIMING3_DSC_MAN ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int,int*,int*) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah,
				      struct ath9k_channel *chan)
{
	u32 coef_scaled, ds_coef_exp, ds_coef_man;
	u32 clockMhzScaled = 0x64000000;
	struct chan_centers centers;

	if (FUNC0(chan))
		clockMhzScaled = clockMhzScaled >> 1;
	else if (FUNC1(chan))
		clockMhzScaled = clockMhzScaled >> 2;

	FUNC3(ah, chan, &centers);
	coef_scaled = clockMhzScaled / centers.synth_center;

	FUNC4(ah, coef_scaled, &ds_coef_man,
				      &ds_coef_exp);

	FUNC2(ah, AR_PHY_TIMING3,
		      AR_PHY_TIMING3_DSC_MAN, ds_coef_man);
	FUNC2(ah, AR_PHY_TIMING3,
		      AR_PHY_TIMING3_DSC_EXP, ds_coef_exp);

	coef_scaled = (9 * coef_scaled) / 10;

	FUNC4(ah, coef_scaled, &ds_coef_man,
				      &ds_coef_exp);

	FUNC2(ah, AR_PHY_HALFGI,
		      AR_PHY_HALFGI_DSC_MAN, ds_coef_man);
	FUNC2(ah, AR_PHY_HALFGI,
		      AR_PHY_HALFGI_DSC_EXP, ds_coef_exp);
}