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
struct iwl_mvm {int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; int /*<<< orphan*/  trans; int /*<<< orphan*/  hw; } ;
struct iwl_d3_iter_data {struct ieee80211_vif* vif; scalar_t__ error; struct iwl_mvm* mvm; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum iwl_d3_status { ____Placeholder_iwl_d3_status } iwl_d3_status ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int IWL_D3_STATUS_ALIVE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_d3_iter_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  iwl_mvm_d3_iface_iterator ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct ieee80211_hw *hw)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct iwl_d3_iter_data resume_iter_data = {
		.mvm = mvm,
	};
	struct ieee80211_vif *vif = NULL;
	int ret;
	enum iwl_d3_status d3_status;

	FUNC7(&mvm->mutex);

	/* get the BSS vif pointer again */
	FUNC3(
		mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
		iwl_mvm_d3_iface_iterator, &resume_iter_data);

	if (FUNC2(resume_iter_data.error || !resume_iter_data.vif))
		goto out_unlock;

	vif = resume_iter_data.vif;

	ret = FUNC6(mvm->trans, &d3_status);
	if (ret)
		goto out_unlock;

	if (d3_status != IWL_D3_STATUS_ALIVE) {
		FUNC0(mvm, "Device was reset during suspend\n");
		goto out_unlock;
	}

	FUNC5(mvm, vif);

 out_unlock:
	FUNC8(&mvm->mutex);

	if (vif)
		FUNC4(vif);

	/* return 1 to reconfigure the device */
	FUNC9(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);
	return 1;
}