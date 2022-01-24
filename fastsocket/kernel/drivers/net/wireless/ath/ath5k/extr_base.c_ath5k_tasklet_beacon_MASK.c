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
typedef  scalar_t__ u64 ;
struct ath5k_hw {scalar_t__ opmode; int /*<<< orphan*/  block; int /*<<< orphan*/  nexttbtt; scalar_t__ bintval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_BEACON ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*) ; 
 scalar_t__ FUNC3 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct ath5k_hw *ah = (struct ath5k_hw *) data;

	/*
	 * Software beacon alert--time to send a beacon.
	 *
	 * In IBSS mode we use this interrupt just to
	 * keep track of the next TBTT (target beacon
	 * transmission time) in order to detect whether
	 * automatic TSF updates happened.
	 */
	if (ah->opmode == NL80211_IFTYPE_ADHOC) {
		/* XXX: only if VEOL supported */
		u64 tsf = FUNC3(ah);
		ah->nexttbtt += ah->bintval;
		FUNC0(ah, ATH5K_DEBUG_BEACON,
				"SWBA nexttbtt: %x hw_tu: %x "
				"TSF: %llx\n",
				ah->nexttbtt,
				FUNC1(tsf),
				(unsigned long long) tsf);
	} else {
		FUNC4(&ah->block);
		FUNC2(ah);
		FUNC5(&ah->block);
	}
}