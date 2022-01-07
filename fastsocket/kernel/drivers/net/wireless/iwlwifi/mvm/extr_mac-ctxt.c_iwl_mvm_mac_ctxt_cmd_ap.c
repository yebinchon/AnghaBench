
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_ctx_cmd {int ap; int filter_flags; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;


 int FW_CTXT_ACTION_ADD ;
 int MAC_FILTER_IN_PROBE_REQUEST ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int WARN_ON (int) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_mac_ctxt_cmd_common (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mac_ctx_cmd*,int ) ;
 int iwl_mvm_mac_ctxt_cmd_fill_ap (struct iwl_mvm*,struct ieee80211_vif*,int *,int) ;
 int iwl_mvm_mac_ctxt_send_cmd (struct iwl_mvm*,struct iwl_mac_ctx_cmd*) ;

__attribute__((used)) static int iwl_mvm_mac_ctxt_cmd_ap(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       u32 action)
{
 struct iwl_mac_ctx_cmd cmd = {};

 WARN_ON(vif->type != NL80211_IFTYPE_AP || vif->p2p);


 iwl_mvm_mac_ctxt_cmd_common(mvm, vif, &cmd, action);


 cmd.filter_flags |= cpu_to_le32(MAC_FILTER_IN_PROBE_REQUEST);


 iwl_mvm_mac_ctxt_cmd_fill_ap(mvm, vif, &cmd.ap,
         action == FW_CTXT_ACTION_ADD);

 return iwl_mvm_mac_ctxt_send_cmd(mvm, &cmd);
}
