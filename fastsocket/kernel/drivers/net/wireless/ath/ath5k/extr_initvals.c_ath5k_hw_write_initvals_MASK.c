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
typedef  int u8 ;
struct ath5k_hw {scalar_t__ ah_version; int ah_radio; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 scalar_t__ AR5K_AR5211 ; 
 scalar_t__ AR5K_AR5212 ; 
 int AR5K_PHY_AGC ; 
 int AR5K_PHY_GAIN ; 
 int /*<<< orphan*/  AR5K_PHY_TPC_RG5 ; 
 int /*<<< orphan*/  AR5K_PHY_TPC_RG5_PD_GAIN_OVERLAP ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  AR5K_RF2316 134 
#define  AR5K_RF2317 133 
#define  AR5K_RF2413 132 
#define  AR5K_RF2425 131 
#define  AR5K_RF5111 130 
#define  AR5K_RF5112 129 
#define  AR5K_RF5413 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ar5210_ini ; 
 int /*<<< orphan*/  ar5211_ini ; 
 int /*<<< orphan*/  ar5211_ini_mode ; 
 int /*<<< orphan*/  ar5212_ini_common_start ; 
 int /*<<< orphan*/  ar5212_ini_mode_start ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*,int,int) ; 
 int /*<<< orphan*/  rf2413_ini_common_end ; 
 int /*<<< orphan*/  rf2413_ini_mode_end ; 
 int /*<<< orphan*/  rf2425_ini_common_end ; 
 int /*<<< orphan*/  rf2425_ini_mode_end ; 
 int /*<<< orphan*/  rf5111_ini_bbgain ; 
 int /*<<< orphan*/  rf5111_ini_common_end ; 
 int /*<<< orphan*/  rf5111_ini_mode_end ; 
 int /*<<< orphan*/  rf5112_ini_bbgain ; 
 int /*<<< orphan*/  rf5112_ini_common_end ; 
 int /*<<< orphan*/  rf5112_ini_mode_end ; 
 int /*<<< orphan*/  rf5413_ini_common_end ; 
 int /*<<< orphan*/  rf5413_ini_mode_end ; 

int
FUNC6(struct ath5k_hw *ah, u8 mode, bool skip_pcu)
{
	/*
	 * Write initial register settings
	 */

	/* For AR5212 and compatible */
	if (ah->ah_version == AR5K_AR5212) {

		/* First set of mode-specific settings */
		FUNC3(ah,
			FUNC1(ar5212_ini_mode_start),
			ar5212_ini_mode_start, mode);

		/*
		 * Write initial settings common for all modes
		 */
		FUNC4(ah, FUNC1(ar5212_ini_common_start),
				ar5212_ini_common_start, skip_pcu);

		/* Second set of mode-specific settings */
		switch (ah->ah_radio) {
		case AR5K_RF5111:

			FUNC3(ah,
					FUNC1(rf5111_ini_mode_end),
					rf5111_ini_mode_end, mode);

			FUNC4(ah,
					FUNC1(rf5111_ini_common_end),
					rf5111_ini_common_end, skip_pcu);

			/* Baseband gain table */
			FUNC4(ah,
					FUNC1(rf5111_ini_bbgain),
					rf5111_ini_bbgain, skip_pcu);

			break;
		case AR5K_RF5112:

			FUNC3(ah,
					FUNC1(rf5112_ini_mode_end),
					rf5112_ini_mode_end, mode);

			FUNC4(ah,
					FUNC1(rf5112_ini_common_end),
					rf5112_ini_common_end, skip_pcu);

			FUNC4(ah,
					FUNC1(rf5112_ini_bbgain),
					rf5112_ini_bbgain, skip_pcu);

			break;
		case AR5K_RF5413:

			FUNC3(ah,
					FUNC1(rf5413_ini_mode_end),
					rf5413_ini_mode_end, mode);

			FUNC4(ah,
					FUNC1(rf5413_ini_common_end),
					rf5413_ini_common_end, skip_pcu);

			FUNC4(ah,
					FUNC1(rf5112_ini_bbgain),
					rf5112_ini_bbgain, skip_pcu);

			break;
		case AR5K_RF2316:
		case AR5K_RF2413:

			FUNC3(ah,
					FUNC1(rf2413_ini_mode_end),
					rf2413_ini_mode_end, mode);

			FUNC4(ah,
					FUNC1(rf2413_ini_common_end),
					rf2413_ini_common_end, skip_pcu);

			/* Override settings from rf2413_ini_common_end */
			if (ah->ah_radio == AR5K_RF2316) {
				FUNC5(ah, 0x00004000,
							AR5K_PHY_AGC);
				FUNC5(ah, 0x081b7caa,
							0xa274);
			}

			FUNC4(ah,
					FUNC1(rf5112_ini_bbgain),
					rf5112_ini_bbgain, skip_pcu);
			break;
		case AR5K_RF2317:

			FUNC3(ah,
					FUNC1(rf2413_ini_mode_end),
					rf2413_ini_mode_end, mode);

			FUNC4(ah,
					FUNC1(rf2425_ini_common_end),
					rf2425_ini_common_end, skip_pcu);

			/* Override settings from rf2413_ini_mode_end */
			FUNC5(ah, 0x00180a65, AR5K_PHY_GAIN);

			/* Override settings from rf2413_ini_common_end */
			FUNC5(ah, 0x00004000, AR5K_PHY_AGC);
			FUNC0(ah, AR5K_PHY_TPC_RG5,
				AR5K_PHY_TPC_RG5_PD_GAIN_OVERLAP, 0xa);
			FUNC5(ah, 0x800000a8, 0x8140);
			FUNC5(ah, 0x000000ff, 0x9958);

			FUNC4(ah,
					FUNC1(rf5112_ini_bbgain),
					rf5112_ini_bbgain, skip_pcu);
			break;
		case AR5K_RF2425:

			FUNC3(ah,
					FUNC1(rf2425_ini_mode_end),
					rf2425_ini_mode_end, mode);

			FUNC4(ah,
					FUNC1(rf2425_ini_common_end),
					rf2425_ini_common_end, skip_pcu);

			FUNC4(ah,
					FUNC1(rf5112_ini_bbgain),
					rf5112_ini_bbgain, skip_pcu);
			break;
		default:
			return -EINVAL;

		}

	/* For AR5211 */
	} else if (ah->ah_version == AR5K_AR5211) {

		/* AR5K_MODE_11B */
		if (mode > 2) {
			FUNC2(ah, "unsupported channel mode: %d\n", mode);
			return -EINVAL;
		}

		/* Mode-specific settings */
		FUNC3(ah, FUNC1(ar5211_ini_mode),
				ar5211_ini_mode, mode);

		/*
		 * Write initial settings common for all modes
		 */
		FUNC4(ah, FUNC1(ar5211_ini),
				ar5211_ini, skip_pcu);

		/* AR5211 only comes with 5111 */

		/* Baseband gain table */
		FUNC4(ah, FUNC1(rf5111_ini_bbgain),
				rf5111_ini_bbgain, skip_pcu);
	/* For AR5210 (for mode settings check out ath5k_hw_reset_tx_queue) */
	} else if (ah->ah_version == AR5K_AR5210) {
		FUNC4(ah, FUNC1(ar5210_ini),
				ar5210_ini, skip_pcu);
	}

	return 0;
}