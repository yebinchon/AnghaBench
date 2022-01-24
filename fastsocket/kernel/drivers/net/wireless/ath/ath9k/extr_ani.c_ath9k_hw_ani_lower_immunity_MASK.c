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
struct ath_hw {TYPE_1__* curchan; } ;
struct ar5416AniState {scalar_t__ ofdmNoiseImmunityLevel; scalar_t__ cckNoiseImmunityLevel; scalar_t__ ofdmsTurn; } ;
struct TYPE_2__ {struct ar5416AniState ani; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct ath_hw *ah)
{
	struct ar5416AniState *aniState;

	aniState = &ah->curchan->ani;

	/* lower OFDM noise immunity */
	if (aniState->ofdmNoiseImmunityLevel > 0 &&
	    (aniState->ofdmsTurn || aniState->cckNoiseImmunityLevel == 0)) {
		FUNC1(ah, aniState->ofdmNoiseImmunityLevel - 1,
				      false);
		return;
	}

	/* lower CCK noise immunity */
	if (aniState->cckNoiseImmunityLevel > 0)
		FUNC0(ah, aniState->cckNoiseImmunityLevel - 1,
				     false);
}