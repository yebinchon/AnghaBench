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
struct ath9k_hw_mci {int is_2g; int update_2g5g; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL ; 
 int /*<<< orphan*/  AR_PHY_GLB_CONTROL ; 
 int /*<<< orphan*/  MCI ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct ath_hw *ah)
{
	struct ath_common *common = FUNC3(ah);
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

	FUNC4(common, MCI, "Give LNA and SPDT control to BT\n");

	FUNC2(ah, true);
	FUNC5(50);

	FUNC0(ah, AR_PHY_GLB_CONTROL, AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL);
	mci->is_2g = false;
	mci->update_2g5g = true;
	FUNC1(ah, true);

	/* Force another 2g5g update at next scanning */
	mci->update_2g5g = true;
}