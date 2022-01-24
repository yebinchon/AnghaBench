#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_powertable_cmd {int /*<<< orphan*/  flags; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {scalar_t__ power_scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 scalar_t__ IWL_POWER_SCHEME_CAM ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  POWER_FLAGS_POWER_SAVE_ENA_MSK ; 
 int /*<<< orphan*/  POWER_TABLE_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_powertable_cmd*) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_powertable_cmd*) ; 
 TYPE_1__ iwlmvm_mod_params ; 

int FUNC3(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_powertable_cmd cmd = {};

	if (vif->type != NL80211_IFTYPE_STATION || vif->p2p)
		return 0;

	if (iwlmvm_mod_params.power_scheme != IWL_POWER_SCHEME_CAM)
		cmd.flags |= FUNC0(POWER_FLAGS_POWER_SAVE_ENA_MSK);

	FUNC1(mvm, &cmd);

	return FUNC2(mvm, POWER_TABLE_CMD, CMD_ASYNC,
				    sizeof(cmd), &cmd);
}