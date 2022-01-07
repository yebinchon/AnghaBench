
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct iwl_trans_config {int bc_table_dword; int cmd_fifo; int cmd_queue; int command_names; int queue_watchdog_timeout; int rx_buf_size_8k; int n_no_reclaim_cmds; int const* no_reclaim_cmds; struct iwl_op_mode* op_mode; } ;
struct iwl_trans {int rx_mpdu_cmd_hdr_size; int hw_rev; int rx_mpdu_cmd; int dev; } ;
struct iwl_scan_cmd {int dummy; } ;
struct iwl_scan_channel {int dummy; } ;
struct iwl_rx_mpdu_res_start {int dummy; } ;
struct iwl_op_mode {struct iwl_trans* trans; int * ops; } ;
struct iwl_mvm {struct ieee80211_hw* hw; int scan_cmd; int phy_db; struct iwl_fw const* fw; struct iwl_trans* trans; int mutex; struct iwl_cfg const* cfg; int notif_wait; int sta_drained_wk; int roc_done_wk; int async_handlers_wk; int time_event_lock; int async_handlers_list; int time_event_list; int async_handlers_lock; int dev; } ;
struct TYPE_8__ {int flags; int max_probe_length; } ;
struct iwl_fw {char* fw_version; TYPE_3__ ucode_capa; } ;
struct iwl_cfg {int name; TYPE_1__* base_params; } ;
struct ieee80211_hw {TYPE_2__* wiphy; struct iwl_op_mode* priv; } ;
struct dentry {int dummy; } ;
struct TYPE_10__ {int init_dbg; } ;
struct TYPE_9__ {int wd_disable; int amsdu_size_8K; } ;
struct TYPE_7__ {int fw_version; } ;
struct TYPE_6__ {int wd_timeout; } ;


 int ARRAY_SIZE (int const*) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 int IWL_INFO (struct iwl_mvm*,char*,int ,int ) ;
 int IWL_MVM_CMD_FIFO ;
 int IWL_MVM_CMD_QUEUE ;
 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int IWL_UCODE_TLV_FLAGS_DW_BC_TABLE ;
 int IWL_WATCHDOG_DISABLED ;
 int MAX_NUM_SCAN_CHANNELS ;
 int REPLY_RX_MPDU_CMD ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int ) ;

 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int iwl_mvm_async_handlers_wk ;
 int iwl_mvm_cmd_strings ;
 int iwl_mvm_dbgfs_register (struct iwl_mvm*,struct dentry*) ;
 int iwl_mvm_hw_ops ;
 int iwl_mvm_mac_setup_register (struct iwl_mvm*) ;
 int iwl_mvm_ops ;
 int iwl_mvm_roc_done_wk ;
 int iwl_mvm_sta_drained_wk ;
 int iwl_notification_wait_init (int *) ;
 int iwl_phy_db_free (int ) ;
 int iwl_phy_db_init (struct iwl_trans*) ;
 int iwl_run_init_mvm_ucode (struct iwl_mvm*,int) ;
 int iwl_trans_configure (struct iwl_trans*,struct iwl_trans_config*) ;
 int iwl_trans_start_hw (struct iwl_trans*) ;
 int iwl_trans_stop_hw (struct iwl_trans*,int) ;
 TYPE_5__ iwlmvm_mod_params ;
 TYPE_4__ iwlwifi_mod_params ;
 int kfree (int ) ;
 int kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iwl_op_mode *
iwl_op_mode_mvm_start(struct iwl_trans *trans, const struct iwl_cfg *cfg,
        const struct iwl_fw *fw, struct dentry *dbgfs_dir)
{
 struct ieee80211_hw *hw;
 struct iwl_op_mode *op_mode;
 struct iwl_mvm *mvm;
 struct iwl_trans_config trans_cfg = {};
 static const u8 no_reclaim_cmds[] = {
  128,
 };
 int err, scan_size;




 hw = ieee80211_alloc_hw(sizeof(struct iwl_op_mode) +
    sizeof(struct iwl_mvm),
    &iwl_mvm_hw_ops);
 if (!hw)
  return ((void*)0);

 op_mode = hw->priv;
 op_mode->ops = &iwl_mvm_ops;
 op_mode->trans = trans;

 mvm = IWL_OP_MODE_GET_MVM(op_mode);
 mvm->dev = trans->dev;
 mvm->trans = trans;
 mvm->cfg = cfg;
 mvm->fw = fw;
 mvm->hw = hw;

 mutex_init(&mvm->mutex);
 spin_lock_init(&mvm->async_handlers_lock);
 INIT_LIST_HEAD(&mvm->time_event_list);
 INIT_LIST_HEAD(&mvm->async_handlers_list);
 spin_lock_init(&mvm->time_event_lock);

 INIT_WORK(&mvm->async_handlers_wk, iwl_mvm_async_handlers_wk);
 INIT_WORK(&mvm->roc_done_wk, iwl_mvm_roc_done_wk);
 INIT_WORK(&mvm->sta_drained_wk, iwl_mvm_sta_drained_wk);

 SET_IEEE80211_DEV(mvm->hw, mvm->trans->dev);





 trans_cfg.op_mode = op_mode;
 trans_cfg.no_reclaim_cmds = no_reclaim_cmds;
 trans_cfg.n_no_reclaim_cmds = ARRAY_SIZE(no_reclaim_cmds);
 trans_cfg.rx_buf_size_8k = iwlwifi_mod_params.amsdu_size_8K;

 if (mvm->fw->ucode_capa.flags & IWL_UCODE_TLV_FLAGS_DW_BC_TABLE)
  trans_cfg.bc_table_dword = 1;

 if (!iwlwifi_mod_params.wd_disable)
  trans_cfg.queue_watchdog_timeout = cfg->base_params->wd_timeout;
 else
  trans_cfg.queue_watchdog_timeout = IWL_WATCHDOG_DISABLED;

 trans_cfg.command_names = iwl_mvm_cmd_strings;

 trans_cfg.cmd_queue = IWL_MVM_CMD_QUEUE;
 trans_cfg.cmd_fifo = IWL_MVM_CMD_FIFO;

 snprintf(mvm->hw->wiphy->fw_version,
   sizeof(mvm->hw->wiphy->fw_version),
   "%s", fw->fw_version);


 iwl_trans_configure(mvm->trans, &trans_cfg);

 trans->rx_mpdu_cmd = REPLY_RX_MPDU_CMD;
 trans->rx_mpdu_cmd_hdr_size = sizeof(struct iwl_rx_mpdu_res_start);


 iwl_notification_wait_init(&mvm->notif_wait);


 mvm->phy_db = iwl_phy_db_init(trans);
 if (!mvm->phy_db) {
  IWL_ERR(mvm, "Cannot init phy_db\n");
  goto out_free;
 }

 IWL_INFO(mvm, "Detected %s, REV=0x%X\n",
   mvm->cfg->name, mvm->trans->hw_rev);

 err = iwl_trans_start_hw(mvm->trans);
 if (err)
  goto out_free;

 mutex_lock(&mvm->mutex);
 err = iwl_run_init_mvm_ucode(mvm, 1);
 mutex_unlock(&mvm->mutex);
 if (err && !iwlmvm_mod_params.init_dbg) {
  IWL_ERR(mvm, "Failed to run INIT ucode: %d\n", err);
  goto out_free;
 }


 if (!iwlmvm_mod_params.init_dbg)
  iwl_trans_stop_hw(mvm->trans, 0);

 scan_size = sizeof(struct iwl_scan_cmd) +
  mvm->fw->ucode_capa.max_probe_length +
  (MAX_NUM_SCAN_CHANNELS * sizeof(struct iwl_scan_channel));
 mvm->scan_cmd = kmalloc(scan_size, GFP_KERNEL);
 if (!mvm->scan_cmd)
  goto out_free;

 err = iwl_mvm_mac_setup_register(mvm);
 if (err)
  goto out_free;

 err = iwl_mvm_dbgfs_register(mvm, dbgfs_dir);
 if (err)
  goto out_unregister;

 return op_mode;

 out_unregister:
 ieee80211_unregister_hw(mvm->hw);
 out_free:
 iwl_phy_db_free(mvm->phy_db);
 kfree(mvm->scan_cmd);
 iwl_trans_stop_hw(trans, 1);
 ieee80211_free_hw(mvm->hw);
 return ((void*)0);
}
