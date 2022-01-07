
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int index; int power_domain; struct slot* hotplug_slot; struct slot* info; int * release; int * ops; struct slot* private; struct device_node* dn; int name; } ;
struct hotplug_slot_info {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct slot*) ;
 int kstrdup (char*,int ) ;
 void* kzalloc (int,int ) ;
 int rpaphp_hotplug_slot_ops ;
 int rpaphp_release_slot ;

struct slot *alloc_slot_struct(struct device_node *dn,
                       int drc_index, char *drc_name, int power_domain)
{
 struct slot *slot;

 slot = kzalloc(sizeof(struct slot), GFP_KERNEL);
 if (!slot)
  goto error_nomem;
 slot->hotplug_slot = kzalloc(sizeof(struct hotplug_slot), GFP_KERNEL);
 if (!slot->hotplug_slot)
  goto error_slot;
 slot->hotplug_slot->info = kzalloc(sizeof(struct hotplug_slot_info),
        GFP_KERNEL);
 if (!slot->hotplug_slot->info)
  goto error_hpslot;
 slot->name = kstrdup(drc_name, GFP_KERNEL);
 if (!slot->name)
  goto error_info;
 slot->dn = dn;
 slot->index = drc_index;
 slot->power_domain = power_domain;
 slot->hotplug_slot->private = slot;
 slot->hotplug_slot->ops = &rpaphp_hotplug_slot_ops;
 slot->hotplug_slot->release = &rpaphp_release_slot;

 return (slot);

error_info:
 kfree(slot->hotplug_slot->info);
error_hpslot:
 kfree(slot->hotplug_slot);
error_slot:
 kfree(slot);
error_nomem:
 return ((void*)0);
}
