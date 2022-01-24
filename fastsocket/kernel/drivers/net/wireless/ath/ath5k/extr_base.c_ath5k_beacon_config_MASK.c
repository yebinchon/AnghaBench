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
struct ath5k_hw {int imask; scalar_t__ opmode; int /*<<< orphan*/  block; int /*<<< orphan*/  bhalq; scalar_t__ enable_beacon; scalar_t__ bmisscount; } ;

/* Variables and functions */
 int AR5K_INT_BMISS ; 
 int AR5K_INT_SWBA ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*) ; 
 scalar_t__ FUNC3 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct ath5k_hw *ah)
{
	FUNC7(&ah->block);
	ah->bmisscount = 0;
	ah->imask &= ~(AR5K_INT_BMISS | AR5K_INT_SWBA);

	if (ah->enable_beacon) {
		/*
		 * In IBSS mode we use a self-linked tx descriptor and let the
		 * hardware send the beacons automatically. We have to load it
		 * only once here.
		 * We use the SWBA interrupt only to keep track of the beacon
		 * timers in order to detect automatic TSF updates.
		 */
		FUNC2(ah);

		ah->imask |= AR5K_INT_SWBA;

		if (ah->opmode == NL80211_IFTYPE_ADHOC) {
			if (FUNC3(ah))
				FUNC0(ah);
		} else
			FUNC1(ah, -1);
	} else {
		FUNC5(ah, ah->bhalq);
	}

	FUNC4(ah, ah->imask);
	FUNC6();
	FUNC8(&ah->block);
}