
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hotplug_slot_info {int latch_status; } ;
struct hotplug_slot {int info; } ;


 int memcpy (struct hotplug_slot_info*,int ,int) ;
 int pci_hp_change_slot_info (struct hotplug_slot*,struct hotplug_slot_info*) ;

__attribute__((used)) static int
update_latch_status(struct hotplug_slot *hotplug_slot, u8 value)
{
 struct hotplug_slot_info info;

 memcpy(&info, hotplug_slot->info, sizeof(struct hotplug_slot_info));
 info.latch_status = value;
 return pci_hp_change_slot_info(hotplug_slot, &info);
}
