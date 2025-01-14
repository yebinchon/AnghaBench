
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int last_bt_notif; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_bt_coex_profile_notif {char* bt_open_conn; char* bt_traffic_load; char* bt_agg_traffic_load; char* bt_ci_compliance; scalar_t__ bt_status; } ;


 int IWL_DEBUG_COEX (struct iwl_mvm*,char*,...) ;
 int iwl_mvm_bt_coex_notif_handle (struct iwl_mvm*) ;
 int memcpy (int *,struct iwl_bt_coex_profile_notif*,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

int iwl_mvm_rx_bt_coex_notif(struct iwl_mvm *mvm,
        struct iwl_rx_cmd_buffer *rxb,
        struct iwl_device_cmd *dev_cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_bt_coex_profile_notif *notif = (void *)pkt->data;


 IWL_DEBUG_COEX(mvm, "BT Coex Notification received\n");
 IWL_DEBUG_COEX(mvm, "\tBT %salive\n", notif->bt_status ? "" : "not ");
 IWL_DEBUG_COEX(mvm, "\tBT open conn %d\n", notif->bt_open_conn);
 IWL_DEBUG_COEX(mvm, "\tBT traffic load %d\n", notif->bt_traffic_load);
 IWL_DEBUG_COEX(mvm, "\tBT agg traffic load %d\n",
         notif->bt_agg_traffic_load);
 IWL_DEBUG_COEX(mvm, "\tBT ci compliance %d\n", notif->bt_ci_compliance);


 memcpy(&mvm->last_bt_notif, notif, sizeof(mvm->last_bt_notif));

 iwl_mvm_bt_coex_notif_handle(mvm);





 return 0;
}
