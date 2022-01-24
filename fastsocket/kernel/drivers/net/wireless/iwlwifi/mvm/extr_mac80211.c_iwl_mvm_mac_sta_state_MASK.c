#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm_vif {TYPE_3__* phy_ctxt; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sta_drained_wk; } ;
struct TYPE_4__ {int beacon_int; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_6__ {TYPE_2__* channel; } ;
struct TYPE_5__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int IEEE80211_STA_ASSOC ; 
 int IEEE80211_STA_AUTH ; 
 int IEEE80211_STA_AUTHORIZED ; 
 int IEEE80211_STA_NONE ; 
 int IEEE80211_STA_NOTEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC9 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct ieee80211_hw *hw,
				 struct ieee80211_vif *vif,
				 struct ieee80211_sta *sta,
				 enum ieee80211_sta_state old_state,
				 enum ieee80211_sta_state new_state)
{
	struct iwl_mvm *mvm = FUNC2(hw);
	struct iwl_mvm_vif *mvmvif = FUNC9(vif);
	int ret;

	FUNC0(mvm, "station %pM state change %d->%d\n",
			   sta->addr, old_state, new_state);

	/* this would be a mac80211 bug ... but don't crash */
	if (FUNC3(!mvmvif->phy_ctxt))
		return -EINVAL;

	/* if a STA is being removed, reuse its ID */
	FUNC4(&mvm->sta_drained_wk);

	FUNC10(&mvm->mutex);
	if (old_state == IEEE80211_STA_NOTEXIST &&
	    new_state == IEEE80211_STA_NONE) {
		/*
		 * Firmware bug - it'll crash if the beacon interval is less
		 * than 16. We can't avoid connecting at all, so refuse the
		 * station state change, this will cause mac80211 to abandon
		 * attempts to connect to this AP, and eventually wpa_s will
		 * blacklist the AP...
		 */
		if (vif->type == NL80211_IFTYPE_STATION &&
		    vif->bss_conf.beacon_int < 16) {
			FUNC1(mvm,
				"AP %pM beacon interval is %d, refusing due to firmware bug!\n",
				sta->addr, vif->bss_conf.beacon_int);
			ret = -EINVAL;
			goto out_unlock;
		}
		ret = FUNC5(mvm, vif, sta);
	} else if (old_state == IEEE80211_STA_NONE &&
		   new_state == IEEE80211_STA_AUTH) {
		ret = 0;
	} else if (old_state == IEEE80211_STA_AUTH &&
		   new_state == IEEE80211_STA_ASSOC) {
		ret = FUNC8(mvm, vif, sta);
		if (ret == 0)
			FUNC7(mvm, sta,
					     mvmvif->phy_ctxt->channel->band);
	} else if (old_state == IEEE80211_STA_ASSOC &&
		   new_state == IEEE80211_STA_AUTHORIZED) {
		ret = 0;
	} else if (old_state == IEEE80211_STA_AUTHORIZED &&
		   new_state == IEEE80211_STA_ASSOC) {
		ret = 0;
	} else if (old_state == IEEE80211_STA_ASSOC &&
		   new_state == IEEE80211_STA_AUTH) {
		ret = 0;
	} else if (old_state == IEEE80211_STA_AUTH &&
		   new_state == IEEE80211_STA_NONE) {
		ret = 0;
	} else if (old_state == IEEE80211_STA_NONE &&
		   new_state == IEEE80211_STA_NOTEXIST) {
		ret = FUNC6(mvm, vif, sta);
	} else {
		ret = -EIO;
	}
 out_unlock:
	FUNC11(&mvm->mutex);

	return ret;
}