
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int * hotplug; } ;
struct hotplug_slot {int (* release ) (struct hotplug_slot*) ;struct pci_slot* pci_slot; int slot_list; } ;


 int ENODEV ;
 int dbg (char*,int ) ;
 int fs_remove_slot (struct pci_slot*) ;
 struct hotplug_slot* get_slot_from_name (int ) ;
 int hotplug_slot_name (struct hotplug_slot*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_destroy_slot (struct pci_slot*) ;
 int pci_hp_mutex ;
 int stub1 (struct hotplug_slot*) ;

int pci_hp_deregister(struct hotplug_slot *hotplug)
{
 struct hotplug_slot *temp;
 struct pci_slot *slot;

 if (!hotplug)
  return -ENODEV;

 mutex_lock(&pci_hp_mutex);
 temp = get_slot_from_name(hotplug_slot_name(hotplug));
 if (temp != hotplug) {
  mutex_unlock(&pci_hp_mutex);
  return -ENODEV;
 }

 list_del(&hotplug->slot_list);

 slot = hotplug->pci_slot;
 fs_remove_slot(slot);
 dbg("Removed slot %s from the list\n", hotplug_slot_name(hotplug));

 hotplug->release(hotplug);
 slot->hotplug = ((void*)0);
 pci_destroy_slot(slot);
 mutex_unlock(&pci_hp_mutex);

 return 0;
}
