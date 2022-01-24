#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_vif {int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  bcast_sta; } ;
struct iwl_mvm {int vif_count; int /*<<< orphan*/  mutex; TYPE_3__* hw; struct ieee80211_vif* p2p_device_vif; int /*<<< orphan*/  phy_ctxt_roc; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_7__ {TYPE_2__* wiphy; } ;
struct TYPE_6__ {TYPE_1__** bands; } ;
struct TYPE_5__ {struct ieee80211_channel* channels; } ;

/* Variables and functions */
 size_t IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  NL80211_CHAN_NO_HT ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_chan_def*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm*) ; 
 int FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC10 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC11 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC15 (struct iwl_mvm*,int /*<<< orphan*/ *,struct cfg80211_chan_def*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iwl_mvm_pm_disable_iterator ; 
 int /*<<< orphan*/  iwl_mvm_power_update_iterator ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC19 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC2(hw);
	struct iwl_mvm_vif *mvmvif = FUNC19(vif);
	int ret;

	/*
	 * Not much to do here. The stack will not allow interface
	 * types or combinations that we didn't advertise, so we
	 * don't really have to check the types.
	 */

	FUNC20(&mvm->mutex);

	/* Allocate resources for the MAC context, and add it the the fw  */
	ret = FUNC11(mvm, vif);
	if (ret)
		goto out_unlock;

	/*
	 * The AP binding flow can be done only after the beacon
	 * template is configured (which happens only in the mac80211
	 * start_ap() flow), and adding the broadcast station can happen
	 * only after the binding.
	 * In addition, since modifying the MAC before adding a bcast
	 * station is not allowed by the FW, delay the adding of MAC context to
	 * the point where we can also add the bcast station.
	 * In short: there's not much we can do at this point, other than
	 * allocating resources :)
	 */
	if (vif->type == NL80211_IFTYPE_AP) {
		u32 qmask = FUNC14(mvm, vif);
		ret = FUNC7(mvm, &mvmvif->bcast_sta,
					       qmask);
		if (ret) {
			FUNC1(mvm, "Failed to allocate bcast sta\n");
			goto out_release;
		}

		goto out_unlock;
	}

	/*
	 * TODO: remove this temporary code.
	 * Currently MVM FW supports power management only on single MAC.
	 * If new interface added, disable PM on existing interface.
	 * P2P device is a special case, since it is handled by FW similary to
	 * scan. If P2P deviced is added, PM remains enabled on existing
	 * interface.
	 * Note: the method below does not count the new interface being added
	 * at this moment.
	 */
	if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
		mvm->vif_count++;
	if (mvm->vif_count > 1) {
		FUNC0(mvm,
				   "Disable power on existing interfaces\n");
		FUNC5(
					    mvm->hw,
					    IEEE80211_IFACE_ITER_NORMAL,
					    iwl_mvm_pm_disable_iterator, mvm);
	}

	ret = FUNC10(mvm, vif);
	if (ret)
		goto out_release;

	/*
	 * Update power state on the new interface. Admittedly, based on
	 * mac80211 logics this power update will disable power management
	 */
	FUNC17(mvm, vif);

	/*
	 * P2P_DEVICE interface does not have a channel context assigned to it,
	 * so a dedicated PHY context is allocated to it and the corresponding
	 * MAC context is bound to it at this stage.
	 */
	if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
		struct ieee80211_channel *chan;
		struct cfg80211_chan_def chandef;

		mvmvif->phy_ctxt = &mvm->phy_ctxt_roc;

		/*
		 * The channel used here isn't relevant as it's
		 * going to be overwritten as part of the ROC flow.
		 * For now use the first channel we have.
		 */
		chan = &mvm->hw->wiphy->bands[IEEE80211_BAND_2GHZ]->channels[0];
		FUNC3(&chandef, chan, NL80211_CHAN_NO_HT);
		ret = FUNC15(mvm, mvmvif->phy_ctxt,
					   &chandef, 1, 1);
		if (ret)
			goto out_remove_mac;

		ret = FUNC8(mvm, vif);
		if (ret)
			goto out_remove_phy;

		ret = FUNC6(mvm, vif, &mvmvif->bcast_sta);
		if (ret)
			goto out_unbind;

		/* Save a pointer to p2p device vif, so it can later be used to
		 * update the p2p device MAC when a GO is started/stopped */
		mvm->p2p_device_vif = vif;
	}

	FUNC18(mvm, vif);
	goto out_unlock;

 out_unbind:
	FUNC9(mvm, vif);
 out_remove_phy:
	FUNC16(mvm, mvmvif->phy_ctxt);
 out_remove_mac:
	mvmvif->phy_ctxt = NULL;
	FUNC13(mvm, vif);
 out_release:
	/*
	 * TODO: remove this temporary code.
	 * Currently MVM FW supports power management only on single MAC.
	 * Check if only one additional interface remains after releasing
	 * current one. Update power mode on the remaining interface.
	 */
	if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
		mvm->vif_count--;
	FUNC0(mvm, "Currently %d interfaces active\n",
			   mvm->vif_count);
	if (mvm->vif_count == 1) {
		FUNC4(
					mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
					iwl_mvm_power_update_iterator, mvm);
	}
	FUNC12(mvm, vif);
 out_unlock:
	FUNC21(&mvm->mutex);

	return ret;
}