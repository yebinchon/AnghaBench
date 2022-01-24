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
struct iwl_mvm_vif {int uploaded; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_ADD ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_vif*) ; 
 int FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC3 (struct ieee80211_vif*) ; 

int FUNC4(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC3(vif);
	int ret;

	if (FUNC0(mvmvif->uploaded, "Adding active MAC %pM/%d\n",
		      vif->addr, FUNC1(vif)))
		return -EIO;

	ret = FUNC2(mvm, vif, FW_CTXT_ACTION_ADD);
	if (ret)
		return ret;

	mvmvif->uploaded = true;
	return 0;
}