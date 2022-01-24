#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ cck_trig_low; scalar_t__ ofdm_trig_low; scalar_t__ ofdm_trig_high; scalar_t__ cck_trig_high; } ;
struct ath_hw {int aniperiod; TYPE_2__ config; TYPE_1__* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct ar5416AniState {int ofdmPhyErrCount; int listenTime; int cckPhyErrCount; int ofdmsTurn; int /*<<< orphan*/  cckNoiseImmunityLevel; int /*<<< orphan*/  ofdmNoiseImmunityLevel; } ;
struct TYPE_3__ {struct ar5416AniState ani; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC8(struct ath_hw *ah, struct ath9k_channel *chan)
{
	struct ar5416AniState *aniState;
	struct ath_common *common = FUNC6(ah);
	u32 ofdmPhyErrRate, cckPhyErrRate;

	if (!FUNC0(ah))
		return;

	aniState = &ah->curchan->ani;
	if (!FUNC5(ah))
		return;

	ofdmPhyErrRate = aniState->ofdmPhyErrCount * 1000 /
			 aniState->listenTime;
	cckPhyErrRate =  aniState->cckPhyErrCount * 1000 /
			 aniState->listenTime;

	FUNC7(common, ANI,
		"listenTime=%d OFDM:%d errs=%d/s CCK:%d errs=%d/s ofdm_turn=%d\n",
		aniState->listenTime,
		aniState->ofdmNoiseImmunityLevel,
		ofdmPhyErrRate, aniState->cckNoiseImmunityLevel,
		cckPhyErrRate, aniState->ofdmsTurn);

	if (aniState->listenTime > ah->aniperiod) {
		if (cckPhyErrRate < ah->config.cck_trig_low &&
		    ofdmPhyErrRate < ah->config.ofdm_trig_low) {
			FUNC3(ah);
			aniState->ofdmsTurn = !aniState->ofdmsTurn;
		} else if (ofdmPhyErrRate > ah->config.ofdm_trig_high) {
			FUNC4(ah);
			aniState->ofdmsTurn = false;
		} else if (cckPhyErrRate > ah->config.cck_trig_high) {
			FUNC2(ah);
			aniState->ofdmsTurn = true;
		}
		FUNC1(ah);
	}
}