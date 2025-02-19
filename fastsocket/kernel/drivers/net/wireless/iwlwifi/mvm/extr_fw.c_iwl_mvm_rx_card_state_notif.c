
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_card_state_notif {int flags; } ;


 int CT_KILL_CARD_DISABLED ;
 int HW_CARD_DISABLED ;
 int IWL_DEBUG_RF_KILL (struct iwl_mvm*,char*,char*,char*,char*) ;
 int SW_CARD_DISABLED ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

int iwl_mvm_rx_card_state_notif(struct iwl_mvm *mvm,
        struct iwl_rx_cmd_buffer *rxb,
        struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_card_state_notif *card_state_notif = (void *)pkt->data;
 u32 flags = le32_to_cpu(card_state_notif->flags);

 IWL_DEBUG_RF_KILL(mvm, "Card state received: HW:%s SW:%s CT:%s\n",
     (flags & HW_CARD_DISABLED) ? "Kill" : "On",
     (flags & SW_CARD_DISABLED) ? "Kill" : "On",
     (flags & CT_KILL_CARD_DISABLED) ?
     "Reached" : "Not reached");

 return 0;
}
