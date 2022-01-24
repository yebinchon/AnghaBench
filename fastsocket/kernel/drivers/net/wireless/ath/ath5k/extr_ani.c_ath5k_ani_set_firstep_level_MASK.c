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
struct TYPE_2__ {int firstep_level; } ;
struct ath5k_hw {TYPE_1__ ani_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_PHY_SIG ; 
 int /*<<< orphan*/  AR5K_PHY_SIG_FIRSTEP ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANI ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,char*,int) ; 

void
FUNC4(struct ath5k_hw *ah, int level)
{
	static const int val[] = { 0, 4, 8 };

	if (level < 0 || level >= FUNC1(val)) {
		FUNC3(ah, "firstep level %d out of range", level);
		return;
	}

	FUNC0(ah, AR5K_PHY_SIG,
				AR5K_PHY_SIG_FIRSTEP, val[level]);

	ah->ani_state.firstep_level = level;
	FUNC2(ah, ATH5K_DEBUG_ANI, "new level %d", level);
}