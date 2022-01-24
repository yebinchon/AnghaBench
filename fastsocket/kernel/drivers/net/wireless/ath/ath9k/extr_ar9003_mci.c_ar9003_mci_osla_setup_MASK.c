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
typedef  int u32 ;
struct ath9k_hw_mci {int config; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BTCOEX_CTRL ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_AGGR_THRESH ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_TIME_TO_NEXT_BT_THRESH_EN ; 
 int /*<<< orphan*/  AR_MCI_MISC ; 
 int /*<<< orphan*/  AR_MCI_MISC_HW_FIX_EN ; 
 int /*<<< orphan*/  AR_MCI_SCHD_TABLE_2 ; 
 int /*<<< orphan*/  AR_MCI_SCHD_TABLE_2_HW_BASED ; 
 int /*<<< orphan*/  AR_MCI_SCHD_TABLE_2_MEM_BASED ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  ATH_MCI_CONFIG_AGGR_THRESH ; 
 int ATH_MCI_CONFIG_DISABLE_AGGR_THRESH ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah, bool enable)
{
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
	u32 thresh;

	if (!enable) {
		FUNC2(ah, AR_BTCOEX_CTRL,
			    AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN);
		return;
	}
	FUNC3(ah, AR_MCI_SCHD_TABLE_2, AR_MCI_SCHD_TABLE_2_HW_BASED, 1);
	FUNC3(ah, AR_MCI_SCHD_TABLE_2,
		      AR_MCI_SCHD_TABLE_2_MEM_BASED, 1);

	if (FUNC0(ah))
		FUNC3(ah, AR_MCI_MISC, AR_MCI_MISC_HW_FIX_EN, 1);

	if (!(mci->config & ATH_MCI_CONFIG_DISABLE_AGGR_THRESH)) {
		thresh = FUNC1(mci->config, ATH_MCI_CONFIG_AGGR_THRESH);
		FUNC3(ah, AR_BTCOEX_CTRL,
			      AR_BTCOEX_CTRL_AGGR_THRESH, thresh);
		FUNC3(ah, AR_BTCOEX_CTRL,
			      AR_BTCOEX_CTRL_TIME_TO_NEXT_BT_THRESH_EN, 1);
	} else
		FUNC3(ah, AR_BTCOEX_CTRL,
			      AR_BTCOEX_CTRL_TIME_TO_NEXT_BT_THRESH_EN, 0);

	FUNC3(ah, AR_BTCOEX_CTRL,
		      AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN, 1);
}