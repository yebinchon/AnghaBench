
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int hotplug_slot; } ;
struct hotplug_slot_info {int adapter_status; int latch_status; int attention_status; int power_status; } ;
struct controller {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpq_get_attention_status (struct controller*,struct slot*) ;
 int cpq_get_latch_status (struct controller*,struct slot*) ;
 int get_presence_status (struct controller*,struct slot*) ;
 int get_slot_enabled (struct controller*,struct slot*) ;
 int kfree (struct hotplug_slot_info*) ;
 struct hotplug_slot_info* kmalloc (int,int ) ;
 int pci_hp_change_slot_info (int ,struct hotplug_slot_info*) ;

__attribute__((used)) static int update_slot_info(struct controller *ctrl, struct slot *slot)
{
 struct hotplug_slot_info *info;
 int result;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->power_status = get_slot_enabled(ctrl, slot);
 info->attention_status = cpq_get_attention_status(ctrl, slot);
 info->latch_status = cpq_get_latch_status(ctrl, slot);
 info->adapter_status = get_presence_status(ctrl, slot);
 result = pci_hp_change_slot_info(slot->hotplug_slot, info);
 kfree (info);
 return result;
}
