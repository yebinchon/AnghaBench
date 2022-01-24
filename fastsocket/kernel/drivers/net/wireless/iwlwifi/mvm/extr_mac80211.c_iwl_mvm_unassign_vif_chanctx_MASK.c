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
struct iwl_mvm_vif {int monitor_active; int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int NL80211_IFTYPE_AP ; 
#define  NL80211_IFTYPE_MONITOR 128 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_mvm_vif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif,
					 struct ieee80211_chanctx_conf *ctx)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);

	FUNC5(&mvm->mutex);

	FUNC2(mvm, mvmvif, &mvmvif->time_event_data);

	if (vif->type == NL80211_IFTYPE_AP)
		goto out_unlock;

	switch (vif->type) {
	case NL80211_IFTYPE_MONITOR:
		mvmvif->monitor_active = false;
		FUNC3(mvm, NULL);
		break;
	default:
		break;
	}

	FUNC1(mvm, vif);
out_unlock:
	mvmvif->phy_ctxt = NULL;
	FUNC6(&mvm->mutex);
}