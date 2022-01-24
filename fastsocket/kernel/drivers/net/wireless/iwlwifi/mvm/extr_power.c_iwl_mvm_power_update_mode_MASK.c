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
struct iwl_powertable_cmd {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  POWER_TABLE_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_powertable_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_powertable_cmd*) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_powertable_cmd*) ; 

int FUNC3(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_powertable_cmd cmd = {};

	if (vif->type != NL80211_IFTYPE_STATION || vif->p2p)
		return 0;

	FUNC0(mvm, vif, &cmd);
	FUNC1(mvm, &cmd);

	return FUNC2(mvm, POWER_TABLE_CMD, CMD_SYNC,
				    sizeof(cmd), &cmd);
}