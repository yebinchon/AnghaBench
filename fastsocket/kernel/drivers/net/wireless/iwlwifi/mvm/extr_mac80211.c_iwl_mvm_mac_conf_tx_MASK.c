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
typedef  size_t u16 ;
struct iwl_mvm_vif {struct ieee80211_tx_queue_params* queue_params; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int FUNC1 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
			       struct ieee80211_vif *vif, u16 ac,
			       const struct ieee80211_tx_queue_params *params)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);

	mvmvif->queue_params[ac] = *params;

	/*
	 * No need to update right away, we'll get BSS_CHANGED_QOS
	 * The exception is P2P_DEVICE interface which needs immediate update.
	 */
	if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
		int ret;

		FUNC3(&mvm->mutex);
		ret = FUNC1(mvm, vif);
		FUNC4(&mvm->mutex);
		return ret;
	}
	return 0;
}