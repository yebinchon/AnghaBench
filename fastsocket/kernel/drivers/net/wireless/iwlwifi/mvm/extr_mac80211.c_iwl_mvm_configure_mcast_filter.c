
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int dummy; } ;
struct iwl_mcast_filter_cmd {int pass_all; int bssid; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
typedef int mcast_filter_cmd ;


 int CMD_SYNC ;
 int ETH_ALEN ;
 int MCAST_FILTER_CMD ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_mcast_filter_cmd*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int iwl_mvm_configure_mcast_filter(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif)
{
 struct iwl_mcast_filter_cmd mcast_filter_cmd = {
  .pass_all = 1,
 };

 memcpy(mcast_filter_cmd.bssid, vif->bss_conf.bssid, ETH_ALEN);

 return iwl_mvm_send_cmd_pdu(mvm, MCAST_FILTER_CMD, CMD_SYNC,
        sizeof(mcast_filter_cmd),
        &mcast_filter_cmd);
}
