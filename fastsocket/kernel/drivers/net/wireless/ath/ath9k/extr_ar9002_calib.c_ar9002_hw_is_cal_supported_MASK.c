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
struct ath_hw {int supp_cals; } ;
struct ath9k_channel {int dummy; } ;
typedef  enum ar9002_cal_types { ____Placeholder_ar9002_cal_types } ar9002_cal_types ;

/* Variables and functions */
#define  ADC_DC_CAL 130 
#define  ADC_GAIN_CAL 129 
#define  IQ_MISMATCH_CAL 128 
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_channel*) ; 

__attribute__((used)) static bool FUNC4(struct ath_hw *ah,
				struct ath9k_channel *chan,
				enum ar9002_cal_types cal_type)
{
	bool supported = false;
	switch (ah->supp_cals & cal_type) {
	case IQ_MISMATCH_CAL:
		/* Run IQ Mismatch for non-CCK only */
		if (!FUNC2(chan))
			supported = true;
		break;
	case ADC_GAIN_CAL:
	case ADC_DC_CAL:
		/* Run ADC Gain Cal for non-CCK & non 2GHz-HT20 only */
		if (!FUNC2(chan) &&
		    !((FUNC0(chan) || FUNC1(ah, chan)) &&
		      FUNC3(chan)))
			supported = true;
		break;
	}
	return supported;
}