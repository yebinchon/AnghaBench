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
struct iwl_mvm_vif {int uploaded; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_ctx_cmd {void* action; void* id_and_color; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  MAC_CONTEXT_CMD ; 
 scalar_t__ FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_mac_ctx_cmd*) ; 
 struct iwl_mvm_vif* FUNC6 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mac_ctx_cmd*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC6(vif);
	struct iwl_mac_ctx_cmd cmd;
	int ret;

	if (FUNC2(!mvmvif->uploaded, "Removing inactive MAC %pM/%d\n",
		      vif->addr, FUNC4(vif)))
		return -EIO;

	FUNC7(&cmd, 0, sizeof(cmd));

	cmd.id_and_color = FUNC3(FUNC0(mvmvif->id,
							   mvmvif->color));
	cmd.action = FUNC3(FW_CTXT_ACTION_REMOVE);

	ret = FUNC5(mvm, MAC_CONTEXT_CMD, CMD_SYNC,
				   sizeof(cmd), &cmd);
	if (ret) {
		FUNC1(mvm, "Failed to remove MAC context: %d\n", ret);
		return ret;
	}

	mvmvif->uploaded = false;
	return 0;
}