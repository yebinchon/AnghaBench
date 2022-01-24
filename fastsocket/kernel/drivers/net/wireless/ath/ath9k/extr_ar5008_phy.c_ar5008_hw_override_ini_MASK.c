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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AR_DIAG_RX_ABORT ; 
 int AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int AR_PCU_MISC_MODE2 ; 
 int AR_PCU_MISC_MODE2_HWWAR1 ; 
 int AR_PCU_MISC_MODE2_HWWAR2 ; 
 int /*<<< orphan*/  AR_PHY_CCK_DETECT ; 
 int AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV ; 
 int AR_PHY_HEAVY_CLIP_FACTOR_RIFS ; 
 int AR_PHY_RIFS_INIT_DELAY ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int,int) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah,
				   struct ath9k_channel *chan)
{
	u32 val;

	/*
	 * Set the RX_ABORT and RX_DIS and clear if off only after
	 * RXE is set for MAC. This prevents frames with corrupted
	 * descriptor status.
	 */
	FUNC6(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));

	if (FUNC3(ah)) {
		val = FUNC5(ah, AR_PCU_MISC_MODE2);

		if (!FUNC2(ah))
			val &= ~AR_PCU_MISC_MODE2_HWWAR1;

		if (FUNC4(ah))
			val = val & (~AR_PCU_MISC_MODE2_HWWAR2);

		FUNC7(ah, AR_PCU_MISC_MODE2, val);
	}

	FUNC6(ah, AR_PHY_CCK_DETECT,
		    AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV);

	if (FUNC3(ah))
		return;
	/*
	 * Disable BB clock gating
	 * Necessary to avoid issues on AR5416 2.0
	 */
	FUNC7(ah, 0x9800 + (651 << 2), 0x11);

	/*
	 * Disable RIFS search on some chips to avoid baseband
	 * hang issues.
	 */
	if (FUNC0(ah) || FUNC1(ah)) {
		val = FUNC5(ah, AR_PHY_HEAVY_CLIP_FACTOR_RIFS);
		val &= ~AR_PHY_RIFS_INIT_DELAY;
		FUNC7(ah, AR_PHY_HEAVY_CLIP_FACTOR_RIFS, val);
	}
}