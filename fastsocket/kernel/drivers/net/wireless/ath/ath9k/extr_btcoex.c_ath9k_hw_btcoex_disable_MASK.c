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
struct ath_btcoex_hw {int enabled; int* wlan_weight; scalar_t__ scheme; int /*<<< orphan*/  wlanactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;

/* Variables and functions */
 int AR9300_NUM_BT_WEIGHTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE2 ; 
 int /*<<< orphan*/  AR_BT_COEX_WEIGHT ; 
 int /*<<< orphan*/  AR_BT_COEX_WL_WEIGHTS0 ; 
 int /*<<< orphan*/  AR_BT_COEX_WL_WEIGHTS1 ; 
 int AR_BT_MODE ; 
 int AR_BT_QUIET ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ ATH_BTCOEX_CFG_3WIRE ; 
 int /*<<< orphan*/  ATH_BTCOEX_STOMP_NONE ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct ath_hw *ah)
{
	struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;
	int i;

	btcoex_hw->enabled = false;
	if (FUNC3(ah) || FUNC4(ah)) {
		FUNC6(ah, ATH_BTCOEX_STOMP_NONE);
		for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
			FUNC5(ah, FUNC1(i),
				  btcoex_hw->wlan_weight[i]);
		return;
	}
	FUNC8(ah, btcoex_hw->wlanactive_gpio, 0);

	FUNC7(ah, btcoex_hw->wlanactive_gpio,
			AR_GPIO_OUTPUT_MUX_AS_OUTPUT);

	if (btcoex_hw->scheme == ATH_BTCOEX_CFG_3WIRE) {
		FUNC5(ah, AR_BT_COEX_MODE, AR_BT_QUIET | AR_BT_MODE);
		FUNC5(ah, AR_BT_COEX_MODE2, 0);

		if (FUNC2(ah)) {
			FUNC5(ah, AR_BT_COEX_WL_WEIGHTS0, 0);
			FUNC5(ah, AR_BT_COEX_WL_WEIGHTS1, 0);
			for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
				FUNC5(ah, FUNC0(i), 0);
		} else
			FUNC5(ah, AR_BT_COEX_WEIGHT, 0);

	}
}