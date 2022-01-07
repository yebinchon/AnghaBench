
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {scalar_t__ dev; struct slot* hotplug_slot; struct slot* info; } ;
struct hotplug_slot {struct slot* private; } ;


 int kfree (struct slot*) ;
 int pci_dev_put (scalar_t__) ;

__attribute__((used)) static void release_slot(struct hotplug_slot *hotplug_slot)
{
 struct slot *slot = hotplug_slot->private;

 kfree(slot->hotplug_slot->info);
 kfree(slot->hotplug_slot);
 if (slot->dev)
  pci_dev_put(slot->dev);
 kfree(slot);
}
