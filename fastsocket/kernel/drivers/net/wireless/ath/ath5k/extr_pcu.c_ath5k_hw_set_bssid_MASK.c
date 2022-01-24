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
typedef  scalar_t__ u16 ;
struct ath_common {int curaid; scalar_t__ curbssid; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5212 ; 
 int /*<<< orphan*/  AR5K_BEACON ; 
 int /*<<< orphan*/  AR5K_BEACON_TIM ; 
 int /*<<< orphan*/  AR5K_BSS_ID0 ; 
 int /*<<< orphan*/  AR5K_BSS_ID1 ; 
 int AR5K_BSS_ID1_AID_S ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ath_common* FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 

void
FUNC8(struct ath5k_hw *ah)
{
	struct ath_common *common = FUNC1(ah);
	u16 tim_offset = 0;

	/*
	 * Set BSSID mask on 5212
	 */
	if (ah->ah_version == AR5K_AR5212)
		FUNC5(common);

	/*
	 * Set BSSID
	 */
	FUNC4(ah,
			   FUNC7(common->curbssid),
			   AR5K_BSS_ID0);
	FUNC4(ah,
			   FUNC6(common->curbssid + 4) |
			   ((common->curaid & 0x3fff) << AR5K_BSS_ID1_AID_S),
			   AR5K_BSS_ID1);

	if (common->curaid == 0) {
		FUNC2(ah);
		return;
	}

	FUNC0(ah, AR5K_BEACON, AR5K_BEACON_TIM,
			    tim_offset ? tim_offset + 4 : 0);

	FUNC3(ah, NULL, 0);
}