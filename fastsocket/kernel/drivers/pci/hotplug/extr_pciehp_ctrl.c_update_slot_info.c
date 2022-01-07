
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int hotplug_slot; } ;
struct hotplug_slot_info {int adapter_status; int latch_status; int attention_status; int power_status; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct hotplug_slot_info*) ;
 struct hotplug_slot_info* kmalloc (int,int ) ;
 int pci_hp_change_slot_info (int ,struct hotplug_slot_info*) ;
 int pciehp_get_adapter_status (struct slot*,int *) ;
 int pciehp_get_attention_status (struct slot*,int *) ;
 int pciehp_get_latch_status (struct slot*,int *) ;
 int pciehp_get_power_status (struct slot*,int *) ;

__attribute__((used)) static int update_slot_info(struct slot *slot)
{
 struct hotplug_slot_info *info;
 int result;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 pciehp_get_power_status(slot, &info->power_status);
 pciehp_get_attention_status(slot, &info->attention_status);
 pciehp_get_latch_status(slot, &info->latch_status);
 pciehp_get_adapter_status(slot, &info->adapter_status);

 result = pci_hp_change_slot_info(slot->hotplug_slot, info);
 kfree (info);
 return result;
}
