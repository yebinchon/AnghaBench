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
struct ath_hw {int /*<<< orphan*/  ah_mibStats; TYPE_1__* curchan; } ;
struct ar5416AniState {scalar_t__ cckPhyErrCount; scalar_t__ ofdmPhyErrCount; scalar_t__ listenTime; } ;
struct TYPE_2__ {struct ar5416AniState ani; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_ERR_1 ; 
 int /*<<< orphan*/  AR_PHY_ERR_2 ; 
 int /*<<< orphan*/  AR_PHY_ERR_CCK_TIMING ; 
 int /*<<< orphan*/  AR_PHY_ERR_MASK_1 ; 
 int /*<<< orphan*/  AR_PHY_ERR_MASK_2 ; 
 int /*<<< orphan*/  AR_PHY_ERR_OFDM_TIMING ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah)
{
	struct ar5416AniState *aniState;

	if (!FUNC0(ah))
		return;

	aniState = &ah->curchan->ani;
	aniState->listenTime = 0;

	FUNC1(ah);

	FUNC3(ah, AR_PHY_ERR_1, 0);
	FUNC3(ah, AR_PHY_ERR_2, 0);
	FUNC3(ah, AR_PHY_ERR_MASK_1, AR_PHY_ERR_OFDM_TIMING);
	FUNC3(ah, AR_PHY_ERR_MASK_2, AR_PHY_ERR_CCK_TIMING);

	FUNC2(ah);

	FUNC4(ah, &ah->ah_mibStats);

	aniState->ofdmPhyErrCount = 0;
	aniState->cckPhyErrCount = 0;
}