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
struct iwl_mvm_vif {int monitor_active; struct iwl_mvm_phy_ctxt* phy_ctxt; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int FUNC1 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif,
				      struct ieee80211_chanctx_conf *ctx)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_phy_ctxt *phyctx = (void *)ctx->drv_priv;
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	int ret;

	FUNC5(&mvm->mutex);

	mvmvif->phy_ctxt = phyctx;

	switch (vif->type) {
	case NL80211_IFTYPE_AP:
		/*
		 * The AP binding flow is handled as part of the start_ap flow
		 * (in bss_info_changed).
		 */
		ret = 0;
		goto out_unlock;
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_ADHOC:
	case NL80211_IFTYPE_MONITOR:
		break;
	default:
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC1(mvm, vif);
	if (ret)
		goto out_unlock;

	/*
	 * Setting the quota at this stage is only required for monitor
	 * interfaces. For the other types, the bss_info changed flow
	 * will handle quota settings.
	 */
	if (vif->type == NL80211_IFTYPE_MONITOR) {
		mvmvif->monitor_active = true;
		ret = FUNC3(mvm, vif);
		if (ret)
			goto out_remove_binding;
	}

	goto out_unlock;

 out_remove_binding:
	FUNC2(mvm, vif);
 out_unlock:
	FUNC6(&mvm->mutex);
	if (ret)
		mvmvif->phy_ctxt = NULL;
	return ret;
}