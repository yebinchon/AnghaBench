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
struct iwl_mvm_vif {int ap_sta_id; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_sta {int sta_id; int /*<<< orphan*/  tid_data; int /*<<< orphan*/  tfd_queue_msk; scalar_t__ tid_disable_agg; int /*<<< orphan*/  max_agg_bufsize; struct ieee80211_vif* vif; int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  lock; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/ * pending_frames; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__* hw_queue; scalar_t__ type; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ; 
 int IEEE80211_NUM_ACS ; 
 int IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  LINK_QUAL_AGG_FRAME_LIMIT_DEF ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_sta*,int) ; 
 struct iwl_mvm_vif* FUNC6 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct iwl_mvm *mvm,
		    struct ieee80211_vif *vif,
		    struct ieee80211_sta *sta)
{
	struct iwl_mvm_vif *mvmvif = FUNC6(vif);
	struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;
	int i, ret, sta_id;

	FUNC7(&mvm->mutex);

	if (!FUNC11(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
		sta_id = FUNC4(mvm);
	else
		sta_id = mvm_sta->sta_id;

	if (FUNC2(sta_id == IWL_MVM_STATION_COUNT))
		return -ENOSPC;

	FUNC10(&mvm_sta->lock);

	mvm_sta->sta_id = sta_id;
	mvm_sta->mac_id_n_color = FUNC1(mvmvif->id,
						      mvmvif->color);
	mvm_sta->vif = vif;
	mvm_sta->max_agg_bufsize = LINK_QUAL_AGG_FRAME_LIMIT_DEF;

	/* HW restart, don't assume the memory has been zeroed */
	FUNC3(&mvm->pending_frames[sta_id], 0);
	mvm_sta->tid_disable_agg = 0;
	mvm_sta->tfd_queue_msk = 0;
	for (i = 0; i < IEEE80211_NUM_ACS; i++)
		if (vif->hw_queue[i] != IEEE80211_INVAL_HW_QUEUE)
			mvm_sta->tfd_queue_msk |= FUNC0(vif->hw_queue[i]);

	/* for HW restart - need to reset the seq_number etc... */
	FUNC8(mvm_sta->tid_data, 0, sizeof(mvm_sta->tid_data));

	ret = FUNC5(mvm, sta, false);
	if (ret)
		return ret;

	/* The first station added is the AP, the others are TDLS STAs */
	if (vif->type == NL80211_IFTYPE_STATION &&
	    mvmvif->ap_sta_id == IWL_MVM_STATION_COUNT)
		mvmvif->ap_sta_id = sta_id;

	FUNC9(mvm->fw_id_to_mac_id[sta_id], sta);

	return 0;
}