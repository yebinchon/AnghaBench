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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_ctx_cmd {int /*<<< orphan*/  filter_flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;

/* Variables and functions */
 int MAC_FILTER_IN_BEACON ; 
 int MAC_FILTER_IN_CONTROL_AND_MGMT ; 
 int MAC_FILTER_IN_PROBE_REQUEST ; 
 int MAC_FILTER_IN_PROMISC ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mac_ctx_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,struct iwl_mac_ctx_cmd*) ; 

__attribute__((used)) static int FUNC4(struct iwl_mvm *mvm,
					 struct ieee80211_vif *vif,
					 u32 action)
{
	struct iwl_mac_ctx_cmd cmd = {};

	FUNC0(vif->type != NL80211_IFTYPE_MONITOR);

	FUNC2(mvm, vif, &cmd, action);

	cmd.filter_flags = FUNC1(MAC_FILTER_IN_PROMISC |
				       MAC_FILTER_IN_CONTROL_AND_MGMT |
				       MAC_FILTER_IN_BEACON |
				       MAC_FILTER_IN_PROBE_REQUEST);

	return FUNC3(mvm, &cmd);
}