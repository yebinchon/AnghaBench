
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_time_quota_cmd {TYPE_2__* quotas; } ;
struct iwl_mvm_vif {int uploaded; size_t ap_sta_id; TYPE_3__* phy_ctxt; int color; int id; } ;
struct iwl_mvm {int * fw_id_to_mac_id; } ;
struct iwl_binding_cmd {void** macs; void* phy; void* action; void* id_and_color; } ;
struct TYPE_4__ {int assoc; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; int chanctx_conf; } ;
struct ieee80211_sta {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_chanctx_conf {int rx_chains_dynamic; int rx_chains_static; struct cfg80211_chan_def def; } ;
typedef int quota_cmd ;
typedef int binding_cmd ;
struct TYPE_6__ {int color; int id; } ;
struct TYPE_5__ {void* id_and_color; void* max_duration; void* quota; } ;


 int BINDING_CONTEXT_CMD ;
 int CMD_SYNC ;
 int EINVAL ;
 int EIO ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_ADD ;
 int FW_CTXT_INVALID ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int MAX_BINDINGS ;
 int MAX_MACS_IN_BINDING ;
 int TIME_QUOTA_CMD ;
 scalar_t__ WARN_ON (int) ;
 void* cpu_to_le32 (int) ;
 int iwl_mvm_mac_ctxt_add (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_phy_ctxt_add (struct iwl_mvm*,TYPE_3__*,struct cfg80211_chan_def*,int ,int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_time_quota_cmd*) ;
 int iwl_mvm_send_cmd_pdu_status (struct iwl_mvm*,int ,int,struct iwl_binding_cmd*,int*) ;
 int iwl_mvm_sta_send_to_fw (struct iwl_mvm*,struct ieee80211_sta*,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int rcu_assign_pointer (int ,struct ieee80211_sta*) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int iwl_mvm_d3_reprogram(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
    struct ieee80211_sta *ap_sta)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct ieee80211_chanctx_conf *ctx;
 u8 chains_static, chains_dynamic;
 struct cfg80211_chan_def chandef;
 int ret, i;
 struct iwl_binding_cmd binding_cmd = {};
 struct iwl_time_quota_cmd quota_cmd = {};
 u32 status;


 if (WARN_ON(!mvmvif->phy_ctxt))
  return -EINVAL;

 rcu_read_lock();
 ctx = rcu_dereference(vif->chanctx_conf);
 if (WARN_ON(!ctx)) {
  rcu_read_unlock();
  return -EINVAL;
 }
 chandef = ctx->def;
 chains_static = ctx->rx_chains_static;
 chains_dynamic = ctx->rx_chains_dynamic;
 rcu_read_unlock();

 ret = iwl_mvm_phy_ctxt_add(mvm, mvmvif->phy_ctxt, &chandef,
       chains_static, chains_dynamic);
 if (ret)
  return ret;


 mvmvif->uploaded = 0;

 if (WARN_ON(!vif->bss_conf.assoc))
  return -EINVAL;

 vif->bss_conf.assoc = 0;
 ret = iwl_mvm_mac_ctxt_add(mvm, vif);
 vif->bss_conf.assoc = 1;
 if (ret)
  return ret;


 binding_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->phy_ctxt->id,
      mvmvif->phy_ctxt->color));
 binding_cmd.action = cpu_to_le32(FW_CTXT_ACTION_ADD);
 binding_cmd.phy =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->phy_ctxt->id,
      mvmvif->phy_ctxt->color));
 binding_cmd.macs[0] = cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id,
             mvmvif->color));
 for (i = 1; i < MAX_MACS_IN_BINDING; i++)
  binding_cmd.macs[i] = cpu_to_le32(FW_CTXT_INVALID);

 status = 0;
 ret = iwl_mvm_send_cmd_pdu_status(mvm, BINDING_CONTEXT_CMD,
       sizeof(binding_cmd), &binding_cmd,
       &status);
 if (ret) {
  IWL_ERR(mvm, "Failed to add binding: %d\n", ret);
  return ret;
 }

 if (status) {
  IWL_ERR(mvm, "Binding command failed: %u\n", status);
  return -EIO;
 }

 ret = iwl_mvm_sta_send_to_fw(mvm, ap_sta, 0);
 if (ret)
  return ret;
 rcu_assign_pointer(mvm->fw_id_to_mac_id[mvmvif->ap_sta_id], ap_sta);

 ret = iwl_mvm_mac_ctxt_changed(mvm, vif);
 if (ret)
  return ret;


 quota_cmd.quotas[0].id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->phy_ctxt->id,
      mvmvif->phy_ctxt->color));
 quota_cmd.quotas[0].quota = cpu_to_le32(100);
 quota_cmd.quotas[0].max_duration = cpu_to_le32(1000);

 for (i = 1; i < MAX_BINDINGS; i++)
  quota_cmd.quotas[i].id_and_color = cpu_to_le32(FW_CTXT_INVALID);

 ret = iwl_mvm_send_cmd_pdu(mvm, TIME_QUOTA_CMD, CMD_SYNC,
       sizeof(quota_cmd), &quota_cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send quota: %d\n", ret);

 return 0;
}
