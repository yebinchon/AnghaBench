
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_tx_resp {int frame_count; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;


 int iwl_mvm_rx_tx_cmd_agg (struct iwl_mvm*,struct iwl_rx_packet*) ;
 int iwl_mvm_rx_tx_cmd_single (struct iwl_mvm*,struct iwl_rx_packet*) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

int iwl_mvm_rx_tx_cmd(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb,
        struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_mvm_tx_resp *tx_resp = (void *)pkt->data;

 if (tx_resp->frame_count == 1)
  iwl_mvm_rx_tx_cmd_single(mvm, pkt);
 else
  iwl_mvm_rx_tx_cmd_agg(mvm, pkt);

 return 0;
}
