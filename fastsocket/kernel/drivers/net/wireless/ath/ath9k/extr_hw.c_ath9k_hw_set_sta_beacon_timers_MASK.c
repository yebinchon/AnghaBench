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
typedef  scalar_t__ u32 ;
struct ath9k_hw_capabilities {int hw_caps; } ;
struct ath_hw {struct ath9k_hw_capabilities caps; } ;
struct ath_common {int dummy; } ;
struct ath9k_beacon_state {scalar_t__ bs_nexttbtt; scalar_t__ bs_intval; scalar_t__ bs_sleepduration; scalar_t__ bs_dtimperiod; scalar_t__ bs_nextdtim; int bs_tsfoor_threshold; int /*<<< orphan*/  bs_bmissthreshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BEACON_PERIOD ; 
 int /*<<< orphan*/  AR_DMA_BEACON_PERIOD ; 
 int /*<<< orphan*/  AR_DTIM_PERIOD ; 
 int AR_DTIM_TIMER_EN ; 
 int /*<<< orphan*/  AR_NEXT_DTIM ; 
 int /*<<< orphan*/  AR_NEXT_TBTT_TIMER ; 
 int /*<<< orphan*/  AR_NEXT_TIM ; 
 int /*<<< orphan*/  AR_RSSI_THR ; 
 int /*<<< orphan*/  AR_RSSI_THR_BM_THR ; 
 int /*<<< orphan*/  AR_SLEEP1 ; 
 int AR_SLEEP1_ASSUME_DTIM ; 
 int /*<<< orphan*/  AR_SLEEP1_CAB_TIMEOUT ; 
 int /*<<< orphan*/  AR_SLEEP2 ; 
 int /*<<< orphan*/  AR_SLEEP2_BEACON_TIMEOUT ; 
 int AR_TBTT_TIMER_EN ; 
 int /*<<< orphan*/  AR_TIMER_MODE ; 
 int /*<<< orphan*/  AR_TIM_PERIOD ; 
 int AR_TIM_TIMER_EN ; 
 int /*<<< orphan*/  AR_TSFOOR_THRESHOLD ; 
 int ATH9K_HW_CAP_AUTOSLEEP ; 
 int /*<<< orphan*/  BEACON ; 
 int BEACON_TIMEOUT_VAL ; 
 int CAB_TIMEOUT_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ MIN_BEACON_TIMEOUT_VAL ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SLEEP_SLOP ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 struct ath_common* FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__) ; 

void FUNC9(struct ath_hw *ah,
				    const struct ath9k_beacon_state *bs)
{
	u32 nextTbtt, beaconintval, dtimperiod, beacontimeout;
	struct ath9k_hw_capabilities *pCap = &ah->caps;
	struct ath_common *common = FUNC7(ah);

	FUNC0(ah);

	FUNC4(ah, AR_NEXT_TBTT_TIMER, FUNC6(bs->bs_nexttbtt));

	FUNC4(ah, AR_BEACON_PERIOD,
		  FUNC6(bs->bs_intval));
	FUNC4(ah, AR_DMA_BEACON_PERIOD,
		  FUNC6(bs->bs_intval));

	FUNC1(ah);

	FUNC2(ah, AR_RSSI_THR,
		      AR_RSSI_THR_BM_THR, bs->bs_bmissthreshold);

	beaconintval = bs->bs_intval;

	if (bs->bs_sleepduration > beaconintval)
		beaconintval = bs->bs_sleepduration;

	dtimperiod = bs->bs_dtimperiod;
	if (bs->bs_sleepduration > dtimperiod)
		dtimperiod = bs->bs_sleepduration;

	if (beaconintval == dtimperiod)
		nextTbtt = bs->bs_nextdtim;
	else
		nextTbtt = bs->bs_nexttbtt;

	FUNC8(common, BEACON, "next DTIM %d\n", bs->bs_nextdtim);
	FUNC8(common, BEACON, "next beacon %d\n", nextTbtt);
	FUNC8(common, BEACON, "beacon period %d\n", beaconintval);
	FUNC8(common, BEACON, "DTIM period %d\n", dtimperiod);

	FUNC0(ah);

	FUNC4(ah, AR_NEXT_DTIM,
		  FUNC6(bs->bs_nextdtim - SLEEP_SLOP));
	FUNC4(ah, AR_NEXT_TIM, FUNC6(nextTbtt - SLEEP_SLOP));

	FUNC4(ah, AR_SLEEP1,
		  FUNC5((CAB_TIMEOUT_VAL << 3), AR_SLEEP1_CAB_TIMEOUT)
		  | AR_SLEEP1_ASSUME_DTIM);

	if (pCap->hw_caps & ATH9K_HW_CAP_AUTOSLEEP)
		beacontimeout = (BEACON_TIMEOUT_VAL << 3);
	else
		beacontimeout = MIN_BEACON_TIMEOUT_VAL;

	FUNC4(ah, AR_SLEEP2,
		  FUNC5(beacontimeout, AR_SLEEP2_BEACON_TIMEOUT));

	FUNC4(ah, AR_TIM_PERIOD, FUNC6(beaconintval));
	FUNC4(ah, AR_DTIM_PERIOD, FUNC6(dtimperiod));

	FUNC1(ah);

	FUNC3(ah, AR_TIMER_MODE,
		    AR_TBTT_TIMER_EN | AR_TIM_TIMER_EN |
		    AR_DTIM_TIMER_EN);

	/* TSF Out of Range Threshold */
	FUNC4(ah, AR_TSFOOR_THRESHOLD, bs->bs_tsfoor_threshold);
}