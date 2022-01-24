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
typedef  int u16 ;
struct chan_centers {int synth_center; } ;
struct ath_hw {struct ath9k_channel* curchan; TYPE_1__* eep_ops; int /*<<< orphan*/  iniCckfirNormal; int /*<<< orphan*/  iniCckfirJapan2484; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AR_AN_SYNTH9 ; 
 int /*<<< orphan*/  AR_AN_SYNTH9_REFDIVA ; 
 int /*<<< orphan*/  AR_AN_SYNTH9_REFDIVA_S ; 
 int /*<<< orphan*/  AR_PHY_CCK_TX_CTRL ; 
 int AR_PHY_CCK_TX_CTRL_JAPAN ; 
 int /*<<< orphan*/  AR_PHY_SYNTH_CONTROL ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  EEP_FRAC_N_5G ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_channel*) ; 
 int FUNC5 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ; 
 int FUNC10 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ath_hw *ah, struct ath9k_channel *chan)
{
	u16 bMode, fracMode, aModeRefSel = 0;
	u32 freq, ndiv, channelSel = 0, channelFrac = 0, reg32 = 0;
	struct chan_centers centers;
	u32 refDivA = 24;

	FUNC9(ah, chan, &centers);
	freq = centers.synth_center;

	reg32 = FUNC5(ah, AR_PHY_SYNTH_CONTROL);
	reg32 &= 0xc0000000;

	if (freq < 4800) { /* 2 GHz, fractional mode */
		u32 txctl;
		int regWrites = 0;

		bMode = 1;
		fracMode = 1;
		aModeRefSel = 0;
		channelSel = FUNC1(freq);

		if (FUNC0(ah)) {
			if (freq == 2484) {
				/* Enable channel spreading for channel 14 */
				FUNC7(&ah->iniCckfirJapan2484,
						1, regWrites);
			} else {
				FUNC7(&ah->iniCckfirNormal,
						1, regWrites);
			}
		} else {
			txctl = FUNC5(ah, AR_PHY_CCK_TX_CTRL);
			if (freq == 2484) {
				/* Enable channel spreading for channel 14 */
				FUNC6(ah, AR_PHY_CCK_TX_CTRL,
					  txctl | AR_PHY_CCK_TX_CTRL_JAPAN);
			} else {
				FUNC6(ah, AR_PHY_CCK_TX_CTRL,
					  txctl & ~AR_PHY_CCK_TX_CTRL_JAPAN);
			}
		}
	} else {
		bMode = 0;
		fracMode = 0;

		switch (ah->eep_ops->get_eeprom(ah, EEP_FRAC_N_5G)) {
		case 0:
			if (FUNC3(chan) || FUNC4(chan))
				aModeRefSel = 0;
			else if ((freq % 20) == 0)
				aModeRefSel = 3;
			else if ((freq % 10) == 0)
				aModeRefSel = 2;
			if (aModeRefSel)
				break;
		case 1:
		default:
			aModeRefSel = 0;
			/*
			 * Enable 2G (fractional) mode for channels
			 * which are 5MHz spaced.
			 */
			fracMode = 1;
			refDivA = 1;
			channelSel = FUNC2(freq);

			/* RefDivA setting */
			FUNC8(ah, AR_AN_SYNTH9,
				      AR_AN_SYNTH9_REFDIVA,
				      AR_AN_SYNTH9_REFDIVA_S, refDivA);

		}

		if (!fracMode) {
			ndiv = (freq * (refDivA >> aModeRefSel)) / 60;
			channelSel = ndiv & 0x1ff;
			channelFrac = (ndiv & 0xfffffe00) * 2;
			channelSel = (channelSel << 17) | channelFrac;
		}
	}

	reg32 = reg32 |
	    (bMode << 29) |
	    (fracMode << 28) | (aModeRefSel << 26) | (channelSel);

	FUNC6(ah, AR_PHY_SYNTH_CONTROL, reg32);

	ah->curchan = chan;

	return 0;
}