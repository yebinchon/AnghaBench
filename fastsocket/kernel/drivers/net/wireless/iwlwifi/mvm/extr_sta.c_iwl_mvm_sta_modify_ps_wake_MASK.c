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
struct iwl_mvm_sta {int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_add_sta_cmd {int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  station_flags_msk; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  add_modify; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA ; 
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  STA_FLG_PS ; 
 int /*<<< orphan*/  STA_MODE_MODIFY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_mvm_add_sta_cmd*) ; 

void FUNC3(struct iwl_mvm *mvm,
				struct ieee80211_sta *sta)
{
	struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
	struct iwl_mvm_add_sta_cmd cmd = {
		.add_modify = STA_MODE_MODIFY,
		.sta_id = mvmsta->sta_id,
		.station_flags_msk = FUNC1(STA_FLG_PS),
		.mac_id_n_color = FUNC1(mvmsta->mac_id_n_color),
	};
	int ret;

	ret = FUNC2(mvm, ADD_STA, CMD_ASYNC, sizeof(cmd), &cmd);
	if (ret)
		FUNC0(mvm, "Failed to send ADD_STA command (%d)\n", ret);
}