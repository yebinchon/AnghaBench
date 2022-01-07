
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_slot {int kobj; struct hotplug_slot* hotplug; } ;
struct pci_bus {int dummy; } ;
struct module {int dummy; } ;
struct hotplug_slot {int slot_list; struct pci_slot* pci_slot; TYPE_1__* ops; int * release; int * info; } ;
struct TYPE_2__ {char const* mod_name; struct module* owner; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct pci_slot*) ;
 int KOBJ_ADD ;
 int PTR_ERR (struct pci_slot*) ;
 int dbg (char*,...) ;
 int fs_add_slot (struct pci_slot*) ;
 int kobject_uevent (int *,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pci_slot* pci_create_slot (struct pci_bus*,int,char const*,struct hotplug_slot*) ;
 int pci_hotplug_slot_list ;
 int pci_hp_mutex ;

int __pci_hp_register(struct hotplug_slot *slot, struct pci_bus *bus,
        int devnr, const char *name,
        struct module *owner, const char *mod_name)
{
 int result;
 struct pci_slot *pci_slot;

 if (slot == ((void*)0))
  return -ENODEV;
 if ((slot->info == ((void*)0)) || (slot->ops == ((void*)0)))
  return -EINVAL;
 if (slot->release == ((void*)0)) {
  dbg("Why are you trying to register a hotplug slot "
      "without a proper release function?\n");
  return -EINVAL;
 }

 slot->ops->owner = owner;
 slot->ops->mod_name = mod_name;

 mutex_lock(&pci_hp_mutex);





 pci_slot = pci_create_slot(bus, devnr, name, slot);
 if (IS_ERR(pci_slot)) {
  result = PTR_ERR(pci_slot);
  goto out;
 }

 slot->pci_slot = pci_slot;
 pci_slot->hotplug = slot;

 list_add(&slot->slot_list, &pci_hotplug_slot_list);

 result = fs_add_slot(pci_slot);
 kobject_uevent(&pci_slot->kobj, KOBJ_ADD);
 dbg("Added slot %s to the list\n", name);
out:
 mutex_unlock(&pci_hp_mutex);
 return result;
}
