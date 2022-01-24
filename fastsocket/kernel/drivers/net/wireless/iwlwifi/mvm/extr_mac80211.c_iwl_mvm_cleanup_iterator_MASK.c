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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_mvm_vif {int uploaded; int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  time_event_data; int /*<<< orphan*/  color; int /*<<< orphan*/  ap_sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/  time_event_lock; } ;
struct ieee80211_vif {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_STATION_COUNT ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data, u8 *mac,
				     struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = data;
	struct iwl_mvm_vif *mvmvif = FUNC1(vif);

	mvmvif->uploaded = false;
	mvmvif->ap_sta_id = IWL_MVM_STATION_COUNT;

	/* does this make sense at all? */
	mvmvif->color++;

	FUNC2(&mvm->time_event_lock);
	FUNC0(mvm, &mvmvif->time_event_data);
	FUNC3(&mvm->time_event_lock);

	if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
		mvmvif->phy_ctxt = NULL;
}