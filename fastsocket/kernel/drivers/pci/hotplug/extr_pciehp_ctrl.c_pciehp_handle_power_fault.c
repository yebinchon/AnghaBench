
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int INT_POWER_FAULT ;
 int INT_POWER_FAULT_CLEAR ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int pciehp_query_power_fault (struct slot*) ;
 int queue_interrupt_event (struct slot*,int ) ;
 int slot_name (struct slot*) ;

u8 pciehp_handle_power_fault(struct slot *p_slot)
{
 u32 event_type;
 struct controller *ctrl = p_slot->ctrl;


 ctrl_dbg(ctrl, "Power fault interrupt received\n");

 if (!pciehp_query_power_fault(p_slot)) {



  ctrl_info(ctrl, "Power fault cleared on Slot(%s)\n",
     slot_name(p_slot));
  event_type = INT_POWER_FAULT_CLEAR;
 } else {



  ctrl_info(ctrl, "Power fault on Slot(%s)\n", slot_name(p_slot));
  event_type = INT_POWER_FAULT;
  ctrl_info(ctrl, "Power fault bit %x set\n", 0);
 }

 queue_interrupt_event(p_slot, event_type);

 return 1;
}
