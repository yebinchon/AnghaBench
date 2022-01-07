
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_cmd_response {int status; } ;


 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,int ) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

int iwl_mvm_rx_scan_response(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb,
     struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_cmd_response *resp = (void *)pkt->data;

 IWL_DEBUG_SCAN(mvm, "Scan response received. status 0x%x\n",
         le32_to_cpu(resp->status));
 return 0;
}
