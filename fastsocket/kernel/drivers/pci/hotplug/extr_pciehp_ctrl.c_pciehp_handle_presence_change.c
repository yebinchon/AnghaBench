
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int INT_PRESENCE_OFF ;
 int INT_PRESENCE_ON ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int pciehp_get_adapter_status (struct slot*,int*) ;
 int queue_interrupt_event (struct slot*,int ) ;
 int slot_name (struct slot*) ;

u8 pciehp_handle_presence_change(struct slot *p_slot)
{
 u32 event_type;
 u8 presence_save;
 struct controller *ctrl = p_slot->ctrl;


 ctrl_dbg(ctrl, "Presence/Notify input change\n");




 pciehp_get_adapter_status(p_slot, &presence_save);
 if (presence_save) {



  ctrl_info(ctrl, "Card present on Slot(%s)\n", slot_name(p_slot));
  event_type = INT_PRESENCE_ON;
 } else {



  ctrl_info(ctrl, "Card not present on Slot(%s)\n",
     slot_name(p_slot));
  event_type = INT_PRESENCE_OFF;
 }

 queue_interrupt_event(p_slot, event_type);

 return 1;
}
