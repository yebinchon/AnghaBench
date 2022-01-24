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
struct iwl_mvm_vif {int ap_active; int /*<<< orphan*/  bcast_sta; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; scalar_t__ p2p_device_vif; } ;
struct ieee80211_vif {scalar_t__ p2p; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC7 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_vif *mvmvif = FUNC7(vif);

	FUNC4(mvm, vif);

	FUNC8(&mvm->mutex);

	mvmvif->ap_active = false;

	/* Need to update the P2P Device MAC */
	if (vif->p2p && mvm->p2p_device_vif)
		FUNC2(mvm, mvm->p2p_device_vif);

	FUNC6(mvm, NULL);
	FUNC5(mvm, &mvmvif->bcast_sta);
	FUNC1(mvm, vif);
	FUNC3(mvm, vif);

	FUNC9(&mvm->mutex);
}