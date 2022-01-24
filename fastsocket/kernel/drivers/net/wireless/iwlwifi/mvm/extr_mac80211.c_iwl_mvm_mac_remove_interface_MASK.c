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
struct iwl_mvm_vif {int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  bcast_sta; } ;
struct iwl_mvm {int vif_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw; int /*<<< orphan*/ * p2p_device_vif; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iwl_mvm_power_update_iterator ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC11 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct iwl_mvm_vif *mvmvif = FUNC11(vif);

	FUNC8(mvm, vif);

	FUNC12(&mvm->mutex);

	FUNC10(mvm, vif);

	/*
	 * For AP/GO interface, the tear down of the resources allocated to the
	 * interface is be handled as part of the stop_ap flow.
	 */
	if (vif->type == NL80211_IFTYPE_AP) {
		FUNC4(mvm, &mvmvif->bcast_sta);
		goto out_release;
	}

	if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
		mvm->p2p_device_vif = NULL;
		FUNC9(mvm, &mvmvif->bcast_sta);
		FUNC3(mvm, vif);
		FUNC7(mvm, mvmvif->phy_ctxt);
		mvmvif->phy_ctxt = NULL;
	}

	/*
	 * TODO: remove this temporary code.
	 * Currently MVM FW supports power management only on single MAC.
	 * Check if only one additional interface remains after removing
	 * current one. Update power mode on the remaining interface.
	 */
	if (mvm->vif_count && vif->type != NL80211_IFTYPE_P2P_DEVICE)
		mvm->vif_count--;
	FUNC0(mvm, "Currently %d interfaces active\n",
			   mvm->vif_count);
	if (mvm->vif_count == 1) {
		FUNC2(
					mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
					iwl_mvm_power_update_iterator, mvm);
	}

	FUNC6(mvm, vif);

out_release:
	FUNC5(mvm, vif);
	FUNC13(&mvm->mutex);
}