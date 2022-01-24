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
typedef  int u8 ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
#define  AR5K_EEPROM_MODE_11A 130 
#define  AR5K_EEPROM_MODE_11B 129 
#define  AR5K_EEPROM_MODE_11G 128 
 int /*<<< orphan*/  AR5K_PHY_AGCCTL ; 
 int /*<<< orphan*/  AR5K_PHY_AGCCTL_OFDM_DIV_DIS ; 
 int /*<<< orphan*/  AR5K_PHY_FAST_ANT_DIV ; 
 int /*<<< orphan*/  AR5K_PHY_FAST_ANT_DIV_EN ; 
 int /*<<< orphan*/  AR5K_PHY_RESTART ; 
 int /*<<< orphan*/  AR5K_PHY_RESTART_DIV_GC ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct ath5k_hw *ah, u8 ee_mode, bool enable)
{
	switch (ee_mode) {
	case AR5K_EEPROM_MODE_11G:
		/* XXX: This is set to
		 * disabled on initvals !!! */
	case AR5K_EEPROM_MODE_11A:
		if (enable)
			FUNC0(ah, AR5K_PHY_AGCCTL,
					AR5K_PHY_AGCCTL_OFDM_DIV_DIS);
		else
			FUNC1(ah, AR5K_PHY_AGCCTL,
					AR5K_PHY_AGCCTL_OFDM_DIV_DIS);
		break;
	case AR5K_EEPROM_MODE_11B:
		FUNC1(ah, AR5K_PHY_AGCCTL,
					AR5K_PHY_AGCCTL_OFDM_DIV_DIS);
		break;
	default:
		return;
	}

	if (enable) {
		FUNC2(ah, AR5K_PHY_RESTART,
				AR5K_PHY_RESTART_DIV_GC, 4);

		FUNC1(ah, AR5K_PHY_FAST_ANT_DIV,
					AR5K_PHY_FAST_ANT_DIV_EN);
	} else {
		FUNC2(ah, AR5K_PHY_RESTART,
				AR5K_PHY_RESTART_DIV_GC, 0);

		FUNC0(ah, AR5K_PHY_FAST_ANT_DIV,
					AR5K_PHY_FAST_ANT_DIV_EN);
	}
}