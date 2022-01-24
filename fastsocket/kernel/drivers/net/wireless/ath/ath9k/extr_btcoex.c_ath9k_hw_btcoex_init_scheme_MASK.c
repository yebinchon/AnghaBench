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
struct ath_btcoex_hw {void* scheme; int /*<<< orphan*/  btpriority_gpio; int /*<<< orphan*/  wlanactive_gpio; int /*<<< orphan*/  btactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;
struct ath_common {int /*<<< orphan*/  btcoex_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  ATH_BTACTIVE_GPIO_9280 ; 
 int /*<<< orphan*/  ATH_BTACTIVE_GPIO_9300 ; 
 void* ATH_BTCOEX_CFG_2WIRE ; 
 void* ATH_BTCOEX_CFG_3WIRE ; 
 void* ATH_BTCOEX_CFG_NONE ; 
 int /*<<< orphan*/  ATH_BTPRIORITY_GPIO_9285 ; 
 int /*<<< orphan*/  ATH_BTPRIORITY_GPIO_9300 ; 
 int /*<<< orphan*/  ATH_WLANACTIVE_GPIO_9280 ; 
 int /*<<< orphan*/  ATH_WLANACTIVE_GPIO_9300 ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 

void FUNC4(struct ath_hw *ah)
{
	struct ath_common *common = FUNC3(ah);
	struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;

	/*
	 * Check if BTCOEX is globally disabled.
	 */
	if (!common->btcoex_enabled) {
		btcoex_hw->scheme = ATH_BTCOEX_CFG_NONE;
		return;
	}

	if (FUNC2(ah)) {
		btcoex_hw->scheme = ATH_BTCOEX_CFG_3WIRE;
		btcoex_hw->btactive_gpio = ATH_BTACTIVE_GPIO_9300;
		btcoex_hw->wlanactive_gpio = ATH_WLANACTIVE_GPIO_9300;
		btcoex_hw->btpriority_gpio = ATH_BTPRIORITY_GPIO_9300;
	} else if (FUNC0(ah)) {
		btcoex_hw->btactive_gpio = ATH_BTACTIVE_GPIO_9280;
		btcoex_hw->wlanactive_gpio = ATH_WLANACTIVE_GPIO_9280;

		if (FUNC1(ah)) {
			btcoex_hw->scheme = ATH_BTCOEX_CFG_3WIRE;
			btcoex_hw->btpriority_gpio = ATH_BTPRIORITY_GPIO_9285;
		} else {
			btcoex_hw->scheme = ATH_BTCOEX_CFG_2WIRE;
		}
	}
}