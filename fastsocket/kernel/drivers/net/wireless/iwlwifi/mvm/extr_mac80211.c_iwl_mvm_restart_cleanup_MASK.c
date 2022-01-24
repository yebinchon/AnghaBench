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
struct iwl_mvm {scalar_t__ vif_count; int /*<<< orphan*/  hw; int /*<<< orphan*/  sta_drained; int /*<<< orphan*/  fw_key_table; int /*<<< orphan*/  scan_status; int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  IWL_MVM_SCAN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwl_mvm_cleanup_iterator ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct iwl_mvm *mvm)
{
	FUNC3(mvm->trans);
	FUNC4(mvm->trans, false);

	mvm->scan_status = IWL_MVM_SCAN_NONE;

	/* just in case one was running */
	FUNC1(mvm->hw);

	FUNC0(
		mvm->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
		iwl_mvm_cleanup_iterator, mvm);

	FUNC5(mvm->fw_key_table, 0, sizeof(mvm->fw_key_table));
	FUNC5(mvm->sta_drained, 0, sizeof(mvm->sta_drained));

	FUNC2(mvm->hw);

	mvm->vif_count = 0;
}