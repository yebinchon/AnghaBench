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
typedef  int u16 ;
struct chan_centers {int synth_center; } ;
struct ath_hw {struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR_PHY_CCK_TX_CTRL ; 
 int AR_PHY_CCK_TX_CTRL_JAPAN ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int EINVAL ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int) ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_common*,char*,int) ; 

__attribute__((used)) static int FUNC10(struct ath_hw *ah, struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC6(ah);
	u32 channelSel = 0;
	u32 bModeSynth = 0;
	u32 aModeRefSel = 0;
	u32 reg32 = 0;
	u16 freq;
	struct chan_centers centers;

	FUNC7(ah, chan, &centers);
	freq = centers.synth_center;

	if (freq < 4800) {
		u32 txctl;

		if (((freq - 2192) % 5) == 0) {
			channelSel = ((freq - 672) * 2 - 3040) / 10;
			bModeSynth = 0;
		} else if (((freq - 2224) % 5) == 0) {
			channelSel = ((freq - 704) * 2 - 3040) / 10;
			bModeSynth = 1;
		} else {
			FUNC9(common, "Invalid channel %u MHz\n", freq);
			return -EINVAL;
		}

		channelSel = (channelSel << 2) & 0xff;
		channelSel = FUNC8(channelSel, 8);

		txctl = FUNC3(ah, AR_PHY_CCK_TX_CTRL);
		if (freq == 2484) {

			FUNC4(ah, AR_PHY_CCK_TX_CTRL,
				  txctl | AR_PHY_CCK_TX_CTRL_JAPAN);
		} else {
			FUNC4(ah, AR_PHY_CCK_TX_CTRL,
				  txctl & ~AR_PHY_CCK_TX_CTRL_JAPAN);
		}

	} else if ((freq % 20) == 0 && freq >= 5120) {
		channelSel =
		    FUNC8(((freq - 4800) / 20 << 2), 8);
		aModeRefSel = FUNC8(1, 2);
	} else if ((freq % 10) == 0) {
		channelSel =
		    FUNC8(((freq - 4800) / 10 << 1), 8);
		if (FUNC1(ah) || FUNC2(ah))
			aModeRefSel = FUNC8(2, 2);
		else
			aModeRefSel = FUNC8(1, 2);
	} else if ((freq % 5) == 0) {
		channelSel = FUNC8((freq - 4800) / 5, 8);
		aModeRefSel = FUNC8(1, 2);
	} else {
		FUNC9(common, "Invalid channel %u MHz\n", freq);
		return -EINVAL;
	}

	FUNC5(ah, freq);

	reg32 =
	    (channelSel << 8) | (aModeRefSel << 2) | (bModeSynth << 1) |
	    (1 << 5) | 0x1;

	FUNC4(ah, FUNC0(0x37), reg32);

	ah->curchan = chan;

	return 0;
}