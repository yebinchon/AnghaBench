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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_YCOK_MAX ; 
 int /*<<< orphan*/  AR_PHY_CCK_SPUR_MIT ; 
 int /*<<< orphan*/  AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ ; 
 int /*<<< orphan*/  AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE ; 
 int /*<<< orphan*/  AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR ; 
 int /*<<< orphan*/  AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT ; 
 int /*<<< orphan*/  AR_PHY_GC_DYN2040_PRI_CH ; 
 int /*<<< orphan*/  AR_PHY_GEN_CTRL ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_channel*) ; 
 scalar_t__ FUNC6 (struct ath9k_channel*) ; 
 scalar_t__ FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC9 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ath_hw *ah,
					    struct ath9k_channel *chan)
{
	static const u32 spur_freq[4] = { 2420, 2440, 2464, 2480 };
	int cur_bb_spur, negative = 0, cck_spur_freq;
	int i;
	int range, max_spur_cnts, synth_freq;
	u8 *spur_fbin_ptr = FUNC9(ah, FUNC5(chan));

	/*
	 * Need to verify range +/- 10 MHz in control channel, otherwise spur
	 * is out-of-band and can be ignored.
	 */

	if (FUNC3(ah) || FUNC1(ah) || FUNC0(ah) ||
	    FUNC4(ah)) {
		if (spur_fbin_ptr[0] == 0) /* No spur */
			return;
		max_spur_cnts = 5;
		if (FUNC6(chan)) {
			range = 19;
			if (FUNC7(ah, AR_PHY_GEN_CTRL,
					   AR_PHY_GC_DYN2040_PRI_CH) == 0)
				synth_freq = chan->channel + 10;
			else
				synth_freq = chan->channel - 10;
		} else {
			range = 10;
			synth_freq = chan->channel;
		}
	} else {
		range = FUNC2(ah) ? 5 : 10;
		max_spur_cnts = 4;
		synth_freq = chan->channel;
	}

	for (i = 0; i < max_spur_cnts; i++) {
		if (FUNC2(ah) && (i == 0 || i == 3))
			continue;

		negative = 0;
		if (FUNC3(ah) || FUNC1(ah) || FUNC0(ah) ||
		    FUNC4(ah))
			cur_bb_spur = FUNC10(spur_fbin_ptr[i],
							 FUNC5(chan));
		else
			cur_bb_spur = spur_freq[i];

		cur_bb_spur -= synth_freq;
		if (cur_bb_spur < 0) {
			negative = 1;
			cur_bb_spur = -cur_bb_spur;
		}
		if (cur_bb_spur < range) {
			cck_spur_freq = (int)((cur_bb_spur << 19) / 11);

			if (negative == 1)
				cck_spur_freq = -cck_spur_freq;

			cck_spur_freq = cck_spur_freq & 0xfffff;

			FUNC8(ah, AR_PHY_AGC_CONTROL,
				      AR_PHY_AGC_CONTROL_YCOK_MAX, 0x7);
			FUNC8(ah, AR_PHY_CCK_SPUR_MIT,
				      AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR, 0x7f);
			FUNC8(ah, AR_PHY_CCK_SPUR_MIT,
				      AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE,
				      0x2);
			FUNC8(ah, AR_PHY_CCK_SPUR_MIT,
				      AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT,
				      0x1);
			FUNC8(ah, AR_PHY_CCK_SPUR_MIT,
				      AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ,
				      cck_spur_freq);

			return;
		}
	}

	FUNC8(ah, AR_PHY_AGC_CONTROL,
		      AR_PHY_AGC_CONTROL_YCOK_MAX, 0x5);
	FUNC8(ah, AR_PHY_CCK_SPUR_MIT,
		      AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT, 0x0);
	FUNC8(ah, AR_PHY_CCK_SPUR_MIT,
		      AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ, 0x0);
}