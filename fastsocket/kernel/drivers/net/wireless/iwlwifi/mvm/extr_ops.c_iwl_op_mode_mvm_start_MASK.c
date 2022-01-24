#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iwl_trans_config {int bc_table_dword; int /*<<< orphan*/  cmd_fifo; int /*<<< orphan*/  cmd_queue; int /*<<< orphan*/  command_names; int /*<<< orphan*/  queue_watchdog_timeout; int /*<<< orphan*/  rx_buf_size_8k; int /*<<< orphan*/  n_no_reclaim_cmds; int /*<<< orphan*/  const* no_reclaim_cmds; struct iwl_op_mode* op_mode; } ;
struct iwl_trans {int rx_mpdu_cmd_hdr_size; int /*<<< orphan*/  hw_rev; int /*<<< orphan*/  rx_mpdu_cmd; int /*<<< orphan*/  dev; } ;
struct iwl_scan_cmd {int dummy; } ;
struct iwl_scan_channel {int dummy; } ;
struct iwl_rx_mpdu_res_start {int dummy; } ;
struct iwl_op_mode {struct iwl_trans* trans; int /*<<< orphan*/ * ops; } ;
struct iwl_mvm {struct ieee80211_hw* hw; int /*<<< orphan*/  scan_cmd; int /*<<< orphan*/  phy_db; struct iwl_fw const* fw; struct iwl_trans* trans; int /*<<< orphan*/  mutex; struct iwl_cfg const* cfg; int /*<<< orphan*/  notif_wait; int /*<<< orphan*/  sta_drained_wk; int /*<<< orphan*/  roc_done_wk; int /*<<< orphan*/  async_handlers_wk; int /*<<< orphan*/  time_event_lock; int /*<<< orphan*/  async_handlers_list; int /*<<< orphan*/  time_event_list; int /*<<< orphan*/  async_handlers_lock; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int flags; int max_probe_length; } ;
struct iwl_fw {char* fw_version; TYPE_3__ ucode_capa; } ;
struct iwl_cfg {int /*<<< orphan*/  name; TYPE_1__* base_params; } ;
struct ieee80211_hw {TYPE_2__* wiphy; struct iwl_op_mode* priv; } ;
struct dentry {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  init_dbg; } ;
struct TYPE_9__ {int /*<<< orphan*/  wd_disable; int /*<<< orphan*/  amsdu_size_8K; } ;
struct TYPE_7__ {int /*<<< orphan*/  fw_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  wd_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWL_MVM_CMD_FIFO ; 
 int /*<<< orphan*/  IWL_MVM_CMD_QUEUE ; 
 struct iwl_mvm* FUNC5 (struct iwl_op_mode*) ; 
 int IWL_UCODE_TLV_FLAGS_DW_BC_TABLE ; 
 int /*<<< orphan*/  IWL_WATCHDOG_DISABLED ; 
 int MAX_NUM_SCAN_CHANNELS ; 
 int /*<<< orphan*/  REPLY_RX_MPDU_CMD ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
#define  TX_CMD 128 
 struct ieee80211_hw* FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  iwl_mvm_async_handlers_wk ; 
 int /*<<< orphan*/  iwl_mvm_cmd_strings ; 
 int FUNC10 (struct iwl_mvm*,struct dentry*) ; 
 int /*<<< orphan*/  iwl_mvm_hw_ops ; 
 int FUNC11 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  iwl_mvm_ops ; 
 int /*<<< orphan*/  iwl_mvm_roc_done_wk ; 
 int /*<<< orphan*/  iwl_mvm_sta_drained_wk ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*) ; 
 int FUNC15 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_trans*,struct iwl_trans_config*) ; 
 int FUNC17 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_trans*,int) ; 
 TYPE_5__ iwlmvm_mod_params ; 
 TYPE_4__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iwl_op_mode *
FUNC26(struct iwl_trans *trans, const struct iwl_cfg *cfg,
		      const struct iwl_fw *fw, struct dentry *dbgfs_dir)
{
	struct ieee80211_hw *hw;
	struct iwl_op_mode *op_mode;
	struct iwl_mvm *mvm;
	struct iwl_trans_config trans_cfg = {};
	static const u8 no_reclaim_cmds[] = {
		TX_CMD,
	};
	int err, scan_size;

	/********************************
	 * 1. Allocating and configuring HW data
	 ********************************/
	hw = FUNC7(sizeof(struct iwl_op_mode) +
				sizeof(struct iwl_mvm),
				&iwl_mvm_hw_ops);
	if (!hw)
		return NULL;

	op_mode = hw->priv;
	op_mode->ops = &iwl_mvm_ops;
	op_mode->trans = trans;

	mvm = FUNC5(op_mode);
	mvm->dev = trans->dev;
	mvm->trans = trans;
	mvm->cfg = cfg;
	mvm->fw = fw;
	mvm->hw = hw;

	FUNC21(&mvm->mutex);
	FUNC25(&mvm->async_handlers_lock);
	FUNC1(&mvm->time_event_list);
	FUNC1(&mvm->async_handlers_list);
	FUNC25(&mvm->time_event_lock);

	FUNC2(&mvm->async_handlers_wk, iwl_mvm_async_handlers_wk);
	FUNC2(&mvm->roc_done_wk, iwl_mvm_roc_done_wk);
	FUNC2(&mvm->sta_drained_wk, iwl_mvm_sta_drained_wk);

	FUNC6(mvm->hw, mvm->trans->dev);

	/*
	 * Populate the state variables that the transport layer needs
	 * to know about.
	 */
	trans_cfg.op_mode = op_mode;
	trans_cfg.no_reclaim_cmds = no_reclaim_cmds;
	trans_cfg.n_no_reclaim_cmds = FUNC0(no_reclaim_cmds);
	trans_cfg.rx_buf_size_8k = iwlwifi_mod_params.amsdu_size_8K;

	if (mvm->fw->ucode_capa.flags & IWL_UCODE_TLV_FLAGS_DW_BC_TABLE)
		trans_cfg.bc_table_dword = true;

	if (!iwlwifi_mod_params.wd_disable)
		trans_cfg.queue_watchdog_timeout = cfg->base_params->wd_timeout;
	else
		trans_cfg.queue_watchdog_timeout = IWL_WATCHDOG_DISABLED;

	trans_cfg.command_names = iwl_mvm_cmd_strings;

	trans_cfg.cmd_queue = IWL_MVM_CMD_QUEUE;
	trans_cfg.cmd_fifo = IWL_MVM_CMD_FIFO;

	FUNC24(mvm->hw->wiphy->fw_version,
		 sizeof(mvm->hw->wiphy->fw_version),
		 "%s", fw->fw_version);

	/* Configure transport layer */
	FUNC16(mvm->trans, &trans_cfg);

	trans->rx_mpdu_cmd = REPLY_RX_MPDU_CMD;
	trans->rx_mpdu_cmd_hdr_size = sizeof(struct iwl_rx_mpdu_res_start);

	/* set up notification wait support */
	FUNC12(&mvm->notif_wait);

	/* Init phy db */
	mvm->phy_db = FUNC14(trans);
	if (!mvm->phy_db) {
		FUNC3(mvm, "Cannot init phy_db\n");
		goto out_free;
	}

	FUNC4(mvm, "Detected %s, REV=0x%X\n",
		 mvm->cfg->name, mvm->trans->hw_rev);

	err = FUNC17(mvm->trans);
	if (err)
		goto out_free;

	FUNC22(&mvm->mutex);
	err = FUNC15(mvm, true);
	FUNC23(&mvm->mutex);
	if (err && !iwlmvm_mod_params.init_dbg) {
		FUNC3(mvm, "Failed to run INIT ucode: %d\n", err);
		goto out_free;
	}

	/* Stop the hw after the ALIVE and NVM has been read */
	if (!iwlmvm_mod_params.init_dbg)
		FUNC18(mvm->trans, false);

	scan_size = sizeof(struct iwl_scan_cmd) +
		mvm->fw->ucode_capa.max_probe_length +
		(MAX_NUM_SCAN_CHANNELS * sizeof(struct iwl_scan_channel));
	mvm->scan_cmd = FUNC20(scan_size, GFP_KERNEL);
	if (!mvm->scan_cmd)
		goto out_free;

	err = FUNC11(mvm);
	if (err)
		goto out_free;

	err = FUNC10(mvm, dbgfs_dir);
	if (err)
		goto out_unregister;

	return op_mode;

 out_unregister:
	FUNC9(mvm->hw);
 out_free:
	FUNC13(mvm->phy_db);
	FUNC19(mvm->scan_cmd);
	FUNC18(trans, true);
	FUNC8(mvm->hw);
	return NULL;
}