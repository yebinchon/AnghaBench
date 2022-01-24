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
typedef  size_t u8 ;
struct iwl_mvm_sta {int bt_reduced_txpower; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct iwl_bt_coex_cmd {size_t bt_reduced_tx_power; int /*<<< orphan*/  valid_bit_msk; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONFIG ; 
 size_t BT_REDUCED_TX_POWER_BIT ; 
 int /*<<< orphan*/  BT_VALID_REDUCED_TX_POWER ; 
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,char*,size_t) ; 
 size_t IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_bt_coex_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm, u8 sta_id,
				       bool enable)
{
	struct iwl_bt_coex_cmd cmd = {
		.valid_bit_msk = FUNC1(BT_VALID_REDUCED_TX_POWER),
		.bt_reduced_tx_power = sta_id,
	};
	struct ieee80211_sta *sta;
	struct iwl_mvm_sta *mvmsta;

	/* This can happen if the station has been removed right now */
	if (sta_id == IWL_MVM_STATION_COUNT)
		return 0;

	sta = FUNC4(mvm->fw_id_to_mac_id[sta_id],
					FUNC3(&mvm->mutex));
	mvmsta = (void *)sta->drv_priv;

	/* nothing to do */
	if (mvmsta->bt_reduced_txpower == enable)
		return 0;

	if (enable)
		cmd.bt_reduced_tx_power |= BT_REDUCED_TX_POWER_BIT;

	FUNC0(mvm, "%sable reduced Tx Power for sta %d\n",
		       enable ? "en" : "dis", sta_id);

	mvmsta->bt_reduced_txpower = enable;

	/* Send ASYNC since this can be sent from an atomic context */
	return FUNC2(mvm, BT_CONFIG, CMD_ASYNC,
				    sizeof(cmd), &cmd);
}