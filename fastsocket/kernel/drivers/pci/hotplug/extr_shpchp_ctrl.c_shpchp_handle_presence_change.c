
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct slot {scalar_t__ presence_save; TYPE_1__* hpc_ops; } ;
struct controller {int slot_device_offset; } ;
struct TYPE_2__ {int (* get_adapter_status ) (struct slot*,scalar_t__*) ;} ;


 int INT_PRESENCE_OFF ;
 int INT_PRESENCE_ON ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int queue_interrupt_event (struct slot*,int ) ;
 struct slot* shpchp_find_slot (struct controller*,int) ;
 int slot_name (struct slot*) ;
 int stub1 (struct slot*,scalar_t__*) ;

u8 shpchp_handle_presence_change(u8 hp_slot, struct controller *ctrl)
{
 struct slot *p_slot;
 u32 event_type;


 ctrl_dbg(ctrl, "Presence/Notify input change\n");

 p_slot = shpchp_find_slot(ctrl, hp_slot + ctrl->slot_device_offset);




 p_slot->hpc_ops->get_adapter_status(p_slot, &(p_slot->presence_save));
 if (p_slot->presence_save) {



  ctrl_info(ctrl, "Card present on Slot(%s)\n",
     slot_name(p_slot));
  event_type = INT_PRESENCE_ON;
 } else {



  ctrl_info(ctrl, "Card not present on Slot(%s)\n",
     slot_name(p_slot));
  event_type = INT_PRESENCE_OFF;
 }

 queue_interrupt_event(p_slot, event_type);

 return 1;
}
