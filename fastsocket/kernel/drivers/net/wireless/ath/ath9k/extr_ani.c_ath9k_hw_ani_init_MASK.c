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
struct TYPE_2__ {scalar_t__ enable_ani; int /*<<< orphan*/  ani_poll_interval; int /*<<< orphan*/  cck_trig_low; int /*<<< orphan*/  cck_trig_high; int /*<<< orphan*/  ofdm_trig_low; int /*<<< orphan*/  ofdm_trig_high; } ;
struct ath_hw {int /*<<< orphan*/  proc_phyerr; TYPE_1__ config; int /*<<< orphan*/  aniperiod; struct ath9k_channel* channels; } ;
struct ath_common {int dummy; } ;
struct ar5416AniState {int mrcCCK; int ofdmsTurn; int /*<<< orphan*/  ofdmNoiseImmunityLevel; int /*<<< orphan*/  cckNoiseImmunityLevel; int /*<<< orphan*/  ofdmWeakSigDetect; int /*<<< orphan*/  firstepLevel; int /*<<< orphan*/  spurImmunityLevel; } ;
struct ath9k_channel {struct ar5416AniState ani; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 int FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_DEF_LEVEL ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_TRIG_HIGH ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_TRIG_LOW ; 
 int /*<<< orphan*/  ATH9K_ANI_FIRSTEP_LVL ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_DEF_LEVEL ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_TRIG_HIGH ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_TRIG_LOW ; 
 int /*<<< orphan*/  ATH9K_ANI_PERIOD ; 
 int /*<<< orphan*/  ATH9K_ANI_POLLINTERVAL ; 
 int /*<<< orphan*/  ATH9K_ANI_SPUR_IMMUNE_LVL ; 
 int /*<<< orphan*/  ATH9K_ANI_USE_OFDM_WEAK_SIG ; 
 int /*<<< orphan*/  HAL_PROCESS_ANI ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC6(struct ath_hw *ah)
{
	struct ath_common *common = FUNC4(ah);
	int i;

	FUNC5(common, ANI, "Initialize ANI\n");

	ah->config.ofdm_trig_high = ATH9K_ANI_OFDM_TRIG_HIGH;
	ah->config.ofdm_trig_low = ATH9K_ANI_OFDM_TRIG_LOW;

	ah->config.cck_trig_high = ATH9K_ANI_CCK_TRIG_HIGH;
	ah->config.cck_trig_low = ATH9K_ANI_CCK_TRIG_LOW;

	for (i = 0; i < FUNC0(ah->channels); i++) {
		struct ath9k_channel *chan = &ah->channels[i];
		struct ar5416AniState *ani = &chan->ani;

		ani->spurImmunityLevel = ATH9K_ANI_SPUR_IMMUNE_LVL;

		ani->firstepLevel = ATH9K_ANI_FIRSTEP_LVL;

		ani->mrcCCK = FUNC1(ah) ? true : false;

		ani->ofdmsTurn = true;

		ani->ofdmWeakSigDetect = ATH9K_ANI_USE_OFDM_WEAK_SIG;
		ani->cckNoiseImmunityLevel = ATH9K_ANI_CCK_DEF_LEVEL;
		ani->ofdmNoiseImmunityLevel = ATH9K_ANI_OFDM_DEF_LEVEL;
	}

	/*
	 * since we expect some ongoing maintenance on the tables, let's sanity
	 * check here default level should not modify INI setting.
	 */
	ah->aniperiod = ATH9K_ANI_PERIOD;
	ah->config.ani_poll_interval = ATH9K_ANI_POLLINTERVAL;

	if (ah->config.enable_ani)
		ah->proc_phyerr |= HAL_PROCESS_ANI;

	FUNC2(ah);
	FUNC3(ah);
}