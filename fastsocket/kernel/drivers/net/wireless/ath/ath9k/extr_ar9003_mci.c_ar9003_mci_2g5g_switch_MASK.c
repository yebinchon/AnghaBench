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
struct ath9k_hw_mci {int config; scalar_t__ is_2g; int /*<<< orphan*/  update_2g5g; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL ; 
 int /*<<< orphan*/  AR_MCI_TX_CTRL ; 
 int /*<<< orphan*/  AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE ; 
 int /*<<< orphan*/  AR_PHY_GLB_CONTROL ; 
 int /*<<< orphan*/  AR_SELFGEN_MASK ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int ATH_MCI_CONFIG_DISABLE_OSLA ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct ath_hw *ah, bool force)
{
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

	if (!mci->update_2g5g && !force)
		return;

	if (mci->is_2g) {
		FUNC5(ah, true);
		FUNC7(ah, true);
		FUNC8(5);

		FUNC1(ah, AR_MCI_TX_CTRL,
			    AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE);
		FUNC1(ah, AR_PHY_GLB_CONTROL,
			    AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL);

		if (!(mci->config & ATH_MCI_CONFIG_DISABLE_OSLA))
			FUNC4(ah, true);

		if (FUNC0(ah))
			FUNC3(ah, AR_SELFGEN_MASK, 0x02);
	} else {
		FUNC6(ah, true);
		FUNC8(5);

		FUNC2(ah, AR_MCI_TX_CTRL,
			    AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE);
		FUNC2(ah, AR_PHY_GLB_CONTROL,
			    AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL);

		FUNC4(ah, false);
		FUNC5(ah, true);
	}
}