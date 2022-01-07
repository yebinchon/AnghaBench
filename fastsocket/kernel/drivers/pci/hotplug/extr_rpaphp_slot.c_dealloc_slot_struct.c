
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {struct slot* hotplug_slot; struct slot* name; struct slot* info; } ;


 int kfree (struct slot*) ;

void dealloc_slot_struct(struct slot *slot)
{
 kfree(slot->hotplug_slot->info);
 kfree(slot->name);
 kfree(slot->hotplug_slot);
 kfree(slot);
}
