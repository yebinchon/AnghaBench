
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int INT_SWITCH_CLOSE ;
 int INT_SWITCH_OPEN ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int pciehp_get_latch_status (struct slot*,int*) ;
 int queue_interrupt_event (struct slot*,int ) ;
 int slot_name (struct slot*) ;

u8 pciehp_handle_switch_change(struct slot *p_slot)
{
 u8 getstatus;
 u32 event_type;
 struct controller *ctrl = p_slot->ctrl;


 ctrl_dbg(ctrl, "Switch interrupt received\n");

 pciehp_get_latch_status(p_slot, &getstatus);
 if (getstatus) {



  ctrl_info(ctrl, "Latch open on Slot(%s)\n", slot_name(p_slot));
  event_type = INT_SWITCH_OPEN;
 } else {



  ctrl_info(ctrl, "Latch close on Slot(%s)\n", slot_name(p_slot));
  event_type = INT_SWITCH_CLOSE;
 }

 queue_interrupt_event(p_slot, event_type);

 return 1;
}
