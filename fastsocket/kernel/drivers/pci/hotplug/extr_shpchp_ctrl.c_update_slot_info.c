
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot {int hotplug_slot; TYPE_1__* hpc_ops; } ;
struct hotplug_slot_info {int adapter_status; int latch_status; int attention_status; int power_status; } ;
struct TYPE_2__ {int (* get_adapter_status ) (struct slot*,int *) ;int (* get_latch_status ) (struct slot*,int *) ;int (* get_attention_status ) (struct slot*,int *) ;int (* get_power_status ) (struct slot*,int *) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct hotplug_slot_info*) ;
 struct hotplug_slot_info* kmalloc (int,int ) ;
 int pci_hp_change_slot_info (int ,struct hotplug_slot_info*) ;
 int stub1 (struct slot*,int *) ;
 int stub2 (struct slot*,int *) ;
 int stub3 (struct slot*,int *) ;
 int stub4 (struct slot*,int *) ;

__attribute__((used)) static int update_slot_info (struct slot *slot)
{
 struct hotplug_slot_info *info;
 int result;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 slot->hpc_ops->get_power_status(slot, &(info->power_status));
 slot->hpc_ops->get_attention_status(slot, &(info->attention_status));
 slot->hpc_ops->get_latch_status(slot, &(info->latch_status));
 slot->hpc_ops->get_adapter_status(slot, &(info->adapter_status));

 result = pci_hp_change_slot_info(slot->hotplug_slot, info);
 kfree (info);
 return result;
}
