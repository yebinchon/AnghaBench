
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int INT_BUTTON_PRESS ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int queue_interrupt_event (struct slot*,int ) ;
 int slot_name (struct slot*) ;

u8 pciehp_handle_attention_button(struct slot *p_slot)
{
 u32 event_type;
 struct controller *ctrl = p_slot->ctrl;


 ctrl_dbg(ctrl, "Attention button interrupt received\n");




 ctrl_info(ctrl, "Button pressed on Slot(%s)\n", slot_name(p_slot));
 event_type = INT_BUTTON_PRESS;

 queue_interrupt_event(p_slot, event_type);

 return 0;
}
