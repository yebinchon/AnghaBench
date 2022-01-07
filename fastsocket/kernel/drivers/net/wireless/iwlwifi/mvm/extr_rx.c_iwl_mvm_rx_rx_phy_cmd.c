
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {int data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int ampdu_ref; int last_phy_info; } ;
struct iwl_device_cmd {int dummy; } ;


 int memcpy (int *,int ,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

int iwl_mvm_rx_rx_phy_cmd(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb,
     struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);

 memcpy(&mvm->last_phy_info, pkt->data, sizeof(mvm->last_phy_info));
 mvm->ampdu_ref++;
 return 0;
}
