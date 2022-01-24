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
struct iwl_mvm_sta {int /*<<< orphan*/  vif; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw,
			   struct ieee80211_sta *sta,
			   bool set)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;

	if (!mvm_sta || !mvm_sta->vif) {
		FUNC0(mvm, "Station is not associated to a vif\n");
		return -EINVAL;
	}

	return FUNC2(mvm, mvm_sta->vif);
}