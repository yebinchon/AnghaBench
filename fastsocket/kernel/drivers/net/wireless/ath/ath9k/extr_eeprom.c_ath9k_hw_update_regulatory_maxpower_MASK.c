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
struct ath_regulatory {int /*<<< orphan*/  max_power_level; } ;
struct ath_hw {int /*<<< orphan*/  txchainmask; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM ; 
 int /*<<< orphan*/  POWER_CORRECTION_FOR_THREE_CHAIN ; 
 int /*<<< orphan*/  POWER_CORRECTION_FOR_TWO_CHAIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 struct ath_regulatory* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct ath_hw *ah)
{
	struct ath_common *common = FUNC1(ah);
	struct ath_regulatory *regulatory = FUNC2(ah);

	switch (FUNC0(ah->txchainmask)) {
	case 1:
		break;
	case 2:
		regulatory->max_power_level += POWER_CORRECTION_FOR_TWO_CHAIN;
		break;
	case 3:
		regulatory->max_power_level += POWER_CORRECTION_FOR_THREE_CHAIN;
		break;
	default:
		FUNC3(common, EEPROM, "Invalid chainmask configuration\n");
		break;
	}
}