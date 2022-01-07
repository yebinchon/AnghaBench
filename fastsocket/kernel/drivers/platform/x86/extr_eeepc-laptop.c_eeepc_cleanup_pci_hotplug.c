
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hotplug_slot {struct hotplug_slot* info; } ;


 int kfree (struct hotplug_slot*) ;

__attribute__((used)) static void eeepc_cleanup_pci_hotplug(struct hotplug_slot *hotplug_slot)
{
 kfree(hotplug_slot->info);
 kfree(hotplug_slot);
}
