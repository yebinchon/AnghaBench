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
typedef  size_t u_int8_t ;
struct ath_hw {scalar_t__ opmode; TYPE_1__* curchan; } ;
struct ath_common {int dummy; } ;
struct ar5416AniState {size_t cckNoiseImmunityLevel; size_t ofdmNoiseImmunityLevel; scalar_t__ firstepLevel; scalar_t__ mrcCCK; } ;
struct ani_ofdm_level_entry {scalar_t__ fir_step_level; } ;
struct ani_cck_level_entry {scalar_t__ fir_step_level; scalar_t__ mrc_cck_on; } ;
struct TYPE_2__ {struct ar5416AniState ani; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 size_t ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI ; 
 int /*<<< orphan*/  ATH9K_ANI_FIRSTEP_LEVEL ; 
 int /*<<< orphan*/  ATH9K_ANI_MRC_CCK ; 
 int /*<<< orphan*/  ATH9K_ANI_RSSI_THR_HIGH ; 
 scalar_t__ ATH9K_ANI_RSSI_THR_LOW ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ath_common* FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ani_cck_level_entry* cck_level_table ; 
 struct ani_ofdm_level_entry* ofdm_level_table ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah, u_int8_t immunityLevel,
				 bool scan)
{
	struct ar5416AniState *aniState = &ah->curchan->ani;
	struct ath_common *common = FUNC5(ah);
	const struct ani_ofdm_level_entry *entry_ofdm;
	const struct ani_cck_level_entry *entry_cck;

	FUNC6(common, ANI, "**** ccklevel %d=>%d, rssi=%d[lo=%d hi=%d]\n",
		aniState->cckNoiseImmunityLevel, immunityLevel,
		FUNC3(ah), ATH9K_ANI_RSSI_THR_LOW,
		ATH9K_ANI_RSSI_THR_HIGH);

	if (ah->opmode == NL80211_IFTYPE_STATION &&
	    FUNC3(ah) <= ATH9K_ANI_RSSI_THR_LOW &&
	    immunityLevel > ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI)
		immunityLevel = ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI;

	if (!scan)
		aniState->cckNoiseImmunityLevel = immunityLevel;

	entry_ofdm = &ofdm_level_table[aniState->ofdmNoiseImmunityLevel];
	entry_cck = &cck_level_table[aniState->cckNoiseImmunityLevel];

	if (aniState->firstepLevel != entry_cck->fir_step_level &&
	    entry_cck->fir_step_level >= entry_ofdm->fir_step_level)
		FUNC4(ah,
				     ATH9K_ANI_FIRSTEP_LEVEL,
				     entry_cck->fir_step_level);

	/* Skip MRC CCK for pre AR9003 families */
	if (!FUNC0(ah) || FUNC1(ah) || FUNC2(ah))
		return;

	if (aniState->mrcCCK != entry_cck->mrc_cck_on)
		FUNC4(ah,
				     ATH9K_ANI_MRC_CCK,
				     entry_cck->mrc_cck_on);
}