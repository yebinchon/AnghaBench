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
struct iwl_mvm_vif {int ap_active; int /*<<< orphan*/  bcast_sta; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; scalar_t__ p2p_device_vif; } ;
struct ieee80211_vif {scalar_t__ p2p; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC4 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC7 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC10 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_vif *mvmvif = FUNC10(vif);
	int ret;

	FUNC11(&mvm->mutex);

	/* Send the beacon template */
	ret = FUNC4(mvm, vif);
	if (ret)
		goto out_unlock;

	/* Add the mac context */
	ret = FUNC3(mvm, vif);
	if (ret)
		goto out_unlock;

	/* Perform the binding */
	ret = FUNC1(mvm, vif);
	if (ret)
		goto out_remove;

	mvmvif->ap_active = true;

	/* Send the bcast station. At this stage the TBTT and DTIM time events
	 * are added and applied to the scheduler */
	ret = FUNC7(mvm, vif, &mvmvif->bcast_sta);
	if (ret)
		goto out_unbind;

	ret = FUNC9(mvm, vif);
	if (ret)
		goto out_rm_bcast;

	/* Need to update the P2P Device MAC */
	if (vif->p2p && mvm->p2p_device_vif)
		FUNC5(mvm, mvm->p2p_device_vif);

	FUNC12(&mvm->mutex);
	return 0;

out_rm_bcast:
	FUNC8(mvm, &mvmvif->bcast_sta);
out_unbind:
	FUNC2(mvm, vif);
out_remove:
	FUNC6(mvm, vif);
out_unlock:
	FUNC12(&mvm->mutex);
	return ret;
}