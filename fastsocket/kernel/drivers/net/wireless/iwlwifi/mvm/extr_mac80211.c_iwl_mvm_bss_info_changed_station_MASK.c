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
typedef  int u32 ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; int /*<<< orphan*/  time_event_data; } ;
struct iwl_mvm {int vif_count; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
struct ieee80211_bss_conf {scalar_t__ assoc; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_DTIM_PERIOD ; 
 int BSS_CHANGED_PS ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,...) ; 
 scalar_t__ IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC4 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct iwl_mvm_vif*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iwl_mvm*,struct ieee80211_vif*,scalar_t__) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC9 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC10(struct iwl_mvm *mvm,
					     struct ieee80211_vif *vif,
					     struct ieee80211_bss_conf *bss_conf,
					     u32 changes)
{
	struct iwl_mvm_vif *mvmvif = FUNC9(vif);
	int ret;

	ret = FUNC4(mvm, vif);
	if (ret)
		FUNC1(mvm, "failed to update MAC %pM\n", vif->addr);

	if (changes & BSS_CHANGED_ASSOC) {
		if (bss_conf->assoc) {
			/* add quota for this interface */
			ret = FUNC8(mvm, vif);
			if (ret) {
				FUNC1(mvm, "failed to update quotas\n");
				return;
			}
			FUNC2(mvm, vif);
			FUNC3(mvm, vif);
		} else if (mvmvif->ap_sta_id != IWL_MVM_STATION_COUNT) {
			/* remove AP station now that the MAC is unassoc */
			ret = FUNC7(mvm, vif, mvmvif->ap_sta_id);
			if (ret)
				FUNC1(mvm, "failed to remove AP station\n");
			mvmvif->ap_sta_id = IWL_MVM_STATION_COUNT;
			/* remove quota for this interface */
			ret = FUNC8(mvm, NULL);
			if (ret)
				FUNC1(mvm, "failed to update quotas\n");
		}
	} else if (changes & BSS_CHANGED_DTIM_PERIOD) {
		/*
		 * We received a beacon _after_ association so
		 * remove the session protection.
		 */
		FUNC6(mvm, mvmvif,
					  &mvmvif->time_event_data);
	} else if (changes & BSS_CHANGED_PS) {
		/*
		 * TODO: remove this temporary code.
		 * Currently MVM FW supports power management only on single
		 * MAC. Avoid power mode update if more than one interface
		 * is active.
		 */
		FUNC0(mvm, "Currently %d interfaces active\n",
				   mvm->vif_count);
		if (mvm->vif_count == 1) {
			ret = FUNC5(mvm, vif);
			if (ret)
				FUNC1(mvm, "failed to update power mode\n");
		}
	}
}