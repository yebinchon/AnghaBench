
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_powertable_cmd {int flags; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ power_scheme; } ;


 int CMD_ASYNC ;
 scalar_t__ IWL_POWER_SCHEME_CAM ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int POWER_FLAGS_POWER_SAVE_ENA_MSK ;
 int POWER_TABLE_CMD ;
 int cpu_to_le16 (int ) ;
 int iwl_mvm_power_log (struct iwl_mvm*,struct iwl_powertable_cmd*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_powertable_cmd*) ;
 TYPE_1__ iwlmvm_mod_params ;

int iwl_mvm_power_disable(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_powertable_cmd cmd = {};

 if (vif->type != NL80211_IFTYPE_STATION || vif->p2p)
  return 0;

 if (iwlmvm_mod_params.power_scheme != IWL_POWER_SCHEME_CAM)
  cmd.flags |= cpu_to_le16(POWER_FLAGS_POWER_SAVE_ENA_MSK);

 iwl_mvm_power_log(mvm, &cmd);

 return iwl_mvm_send_cmd_pdu(mvm, POWER_TABLE_CMD, CMD_ASYNC,
        sizeof(cmd), &cmd);
}
