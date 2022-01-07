
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct slot {int status; TYPE_1__* hpc_ops; } ;
struct controller {int slot_device_offset; } ;
struct TYPE_2__ {int (* query_power_fault ) (struct slot*) ;} ;


 int INT_POWER_FAULT ;
 int INT_POWER_FAULT_CLEAR ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*,int) ;
 int queue_interrupt_event (struct slot*,int ) ;
 struct slot* shpchp_find_slot (struct controller*,int) ;
 int slot_name (struct slot*) ;
 int stub1 (struct slot*) ;

u8 shpchp_handle_power_fault(u8 hp_slot, struct controller *ctrl)
{
 struct slot *p_slot;
 u32 event_type;


 ctrl_dbg(ctrl, "Power fault interrupt received\n");

 p_slot = shpchp_find_slot(ctrl, hp_slot + ctrl->slot_device_offset);

 if ( !(p_slot->hpc_ops->query_power_fault(p_slot))) {



  ctrl_info(ctrl, "Power fault cleared on Slot(%s)\n",
     slot_name(p_slot));
  p_slot->status = 0x00;
  event_type = INT_POWER_FAULT_CLEAR;
 } else {



  ctrl_info(ctrl, "Power fault on Slot(%s)\n", slot_name(p_slot));
  event_type = INT_POWER_FAULT;

  p_slot->status = 0xFF;
  ctrl_info(ctrl, "Power fault bit %x set\n", hp_slot);
 }

 queue_interrupt_event(p_slot, event_type);

 return 1;
}
