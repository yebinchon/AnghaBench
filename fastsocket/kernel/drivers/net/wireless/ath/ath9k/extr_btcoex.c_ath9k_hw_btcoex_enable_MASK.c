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
struct ath_btcoex_hw {int btactive_gpio; int enabled; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_GPIO_PDPU ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
#define  ATH_BTCOEX_CFG_2WIRE 130 
#define  ATH_BTCOEX_CFG_3WIRE 129 
#define  ATH_BTCOEX_CFG_NONE 128 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int FUNC6 (struct ath_hw*) ; 

void FUNC7(struct ath_hw *ah)
{
	struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;

	switch (FUNC6(ah)) {
	case ATH_BTCOEX_CFG_NONE:
		return;
	case ATH_BTCOEX_CFG_2WIRE:
		FUNC3(ah);
		break;
	case ATH_BTCOEX_CFG_3WIRE:
		if (FUNC0(ah) || FUNC1(ah)) {
			FUNC5(ah);
			return;
		}
		FUNC4(ah);
		break;
	}

	FUNC2(ah, AR_GPIO_PDPU,
		(0x2 << (btcoex_hw->btactive_gpio * 2)),
		(0x3 << (btcoex_hw->btactive_gpio * 2)));

	ah->btcoex_hw.enabled = true;
}