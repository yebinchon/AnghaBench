
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_ctx_cmd {int filter_flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;


 int MAC_FILTER_IN_BEACON ;
 int MAC_FILTER_IN_CONTROL_AND_MGMT ;
 int MAC_FILTER_IN_PROBE_REQUEST ;
 int MAC_FILTER_IN_PROMISC ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int WARN_ON (int) ;
 int cpu_to_le32 (int) ;
 int iwl_mvm_mac_ctxt_cmd_common (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mac_ctx_cmd*,int ) ;
 int iwl_mvm_mac_ctxt_send_cmd (struct iwl_mvm*,struct iwl_mac_ctx_cmd*) ;

__attribute__((used)) static int iwl_mvm_mac_ctxt_cmd_listener(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      u32 action)
{
 struct iwl_mac_ctx_cmd cmd = {};

 WARN_ON(vif->type != NL80211_IFTYPE_MONITOR);

 iwl_mvm_mac_ctxt_cmd_common(mvm, vif, &cmd, action);

 cmd.filter_flags = cpu_to_le32(MAC_FILTER_IN_PROMISC |
           MAC_FILTER_IN_CONTROL_AND_MGMT |
           MAC_FILTER_IN_BEACON |
           MAC_FILTER_IN_PROBE_REQUEST);

 return iwl_mvm_mac_ctxt_send_cmd(mvm, &cmd);
}
