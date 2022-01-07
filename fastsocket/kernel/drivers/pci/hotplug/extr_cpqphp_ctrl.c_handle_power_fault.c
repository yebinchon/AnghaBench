
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_func {int status; } ;
struct event_info {int hp_slot; int event_type; } ;
struct controller {size_t next_event; int ctrl_int_comp; int rev; struct event_info* event_queue; scalar_t__ slot_device_offset; int bus; } ;


 int INT_POWER_FAULT ;
 int INT_POWER_FAULT_CLEAR ;
 int amber_LED_on (struct controller*,int) ;
 struct pci_func* cpqhp_slot_find (int ,scalar_t__,int ) ;
 int green_LED_off (struct controller*,int) ;
 int info (char*,...) ;
 int set_SOGO (struct controller*) ;

__attribute__((used)) static u8 handle_power_fault(u8 change, struct controller * ctrl)
{
 int hp_slot;
 u8 rc = 0;
 struct pci_func *func;
 struct event_info *taskInfo;

 if (!change)
  return 0;





 info("power fault interrupt\n");

 for (hp_slot = 0; hp_slot < 6; hp_slot++) {
  if (change & (0x01 << hp_slot)) {



   func = cpqhp_slot_find(ctrl->bus,
    (hp_slot + ctrl->slot_device_offset), 0);

   taskInfo = &(ctrl->event_queue[ctrl->next_event]);
   ctrl->next_event = (ctrl->next_event + 1) % 10;
   taskInfo->hp_slot = hp_slot;

   rc++;

   if (ctrl->ctrl_int_comp & (0x00000100 << hp_slot)) {



    func->status = 0x00;

    taskInfo->event_type = INT_POWER_FAULT_CLEAR;
   } else {



    taskInfo->event_type = INT_POWER_FAULT;

    if (ctrl->rev < 4) {
     amber_LED_on (ctrl, hp_slot);
     green_LED_off (ctrl, hp_slot);
     set_SOGO (ctrl);
    } else {

     func->status = 0xFF;
     info("power fault bit %x set\n", hp_slot);
    }
   }
  }
 }

 return rc;
}
