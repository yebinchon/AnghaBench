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
struct iwl_mvm_vif {size_t ap_sta_id; } ;
struct iwl_mvm_sta {size_t sta_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  tfd_queue_msk; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/ * pending_frames; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 size_t IWL_MVM_STATION_COUNT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iwl_mvm*,struct iwl_mvm_sta*,int) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct iwl_mvm*,size_t) ; 
 struct iwl_mvm_vif* FUNC5 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct iwl_mvm *mvm,
		   struct ieee80211_vif *vif,
		   struct ieee80211_sta *sta)
{
	struct iwl_mvm_vif *mvmvif = FUNC5(vif);
	struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;
	int ret;

	FUNC6(&mvm->mutex);

	if (vif->type == NL80211_IFTYPE_STATION &&
	    mvmvif->ap_sta_id == mvm_sta->sta_id) {
		/* flush its queues here since we are freeing mvm_sta */
		ret = FUNC3(mvm, mvm_sta->tfd_queue_msk, true);

		/*
		 * Put a non-NULL since the fw station isn't removed.
		 * It will be removed after the MAC will be set as
		 * unassoc.
		 */
		FUNC7(mvm->fw_id_to_mac_id[mvm_sta->sta_id],
				   FUNC0(-EINVAL));

		/* if we are associated - we can't remove the AP STA now */
		if (vif->bss_conf.assoc)
			return ret;

		/* unassoc - go ahead - remove the AP STA now */
		mvmvif->ap_sta_id = IWL_MVM_STATION_COUNT;
	}

	/*
	 * Make sure that the tx response code sees the station as -EBUSY and
	 * calls the drain worker.
	 */
	FUNC8(&mvm_sta->lock);
	/*
	 * There are frames pending on the AC queues for this station.
	 * We need to wait until all the frames are drained...
	 */
	if (FUNC1(&mvm->pending_frames[mvm_sta->sta_id])) {
		FUNC7(mvm->fw_id_to_mac_id[mvm_sta->sta_id],
				   FUNC0(-EBUSY));
		FUNC9(&mvm_sta->lock);
		ret = FUNC2(mvm, mvm_sta, true);
	} else {
		FUNC9(&mvm_sta->lock);
		ret = FUNC4(mvm, mvm_sta->sta_id);
		FUNC7(mvm->fw_id_to_mac_id[mvm_sta->sta_id], NULL);
	}

	return ret;
}