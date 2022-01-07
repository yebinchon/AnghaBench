
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {scalar_t__ bt_enable_flag; } ;
struct iwl_bt_cmd {scalar_t__ flags; int kill_cts_mask; int kill_ack_mask; int max_kill; int lead_time; } ;
struct TYPE_2__ {int bt_coex_active; } ;


 scalar_t__ BT_COEX_DISABLE ;
 scalar_t__ BT_COEX_ENABLE ;
 int BT_LEAD_TIME_DEF ;
 int BT_MAX_KILL_DEF ;
 int CMD_SYNC ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int REPLY_BT_CONFIG ;
 scalar_t__ iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_bt_cmd*) ;
 TYPE_1__ iwlwifi_mod_params ;

__attribute__((used)) static void iwl_send_bt_config(struct iwl_priv *priv)
{
 struct iwl_bt_cmd bt_cmd = {
  .lead_time = BT_LEAD_TIME_DEF,
  .max_kill = BT_MAX_KILL_DEF,
  .kill_ack_mask = 0,
  .kill_cts_mask = 0,
 };

 if (!iwlwifi_mod_params.bt_coex_active)
  bt_cmd.flags = BT_COEX_DISABLE;
 else
  bt_cmd.flags = BT_COEX_ENABLE;

 priv->bt_enable_flag = bt_cmd.flags;
 IWL_DEBUG_INFO(priv, "BT coex %s\n",
  (bt_cmd.flags == BT_COEX_DISABLE) ? "disable" : "active");

 if (iwl_dvm_send_cmd_pdu(priv, REPLY_BT_CONFIG,
        CMD_SYNC, sizeof(struct iwl_bt_cmd), &bt_cmd))
  IWL_ERR(priv, "failed to send BT Coex Config\n");
}
