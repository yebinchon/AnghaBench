
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int number; int slot_list; struct slot* hotplug_slot; int attention_status; int power_status; int * ops; int * release; struct slot* private; int devfn; struct pci_bus* bus; struct slot* info; } ;
struct pci_bus {int number; } ;
struct hotplug_slot_info {int number; int slot_list; struct hotplug_slot_info* hotplug_slot; int attention_status; int power_status; int * ops; int * release; struct hotplug_slot_info* private; int devfn; struct pci_bus* bus; struct hotplug_slot_info* info; } ;
struct hotplug_slot {int number; int slot_list; struct hotplug_slot* hotplug_slot; int attention_status; int power_status; int * ops; int * release; struct hotplug_slot* private; int devfn; struct pci_bus* bus; struct hotplug_slot* info; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_DEVFN (int,int ) ;
 int SLOT_NAME_SIZE ;
 scalar_t__ controller ;
 int cpci_get_attention_status (struct slot*) ;
 int cpci_get_power_status (struct slot*) ;
 int cpci_hotplug_slot_ops ;
 int dbg (char*,char*) ;
 int down_write (int *) ;
 int err (char*,int) ;
 int kfree (struct slot*) ;
 struct slot* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_rwsem ;
 int pci_hp_register (struct slot*,struct pci_bus*,int,char*) ;
 int release_slot ;
 int slot_list ;
 char* slot_name (struct slot*) ;
 int slots ;
 int snprintf (char*,int,char*,int,int) ;
 int up_write (int *) ;

int
cpci_hp_register_bus(struct pci_bus *bus, u8 first, u8 last)
{
 struct slot *slot;
 struct hotplug_slot *hotplug_slot;
 struct hotplug_slot_info *info;
 char name[SLOT_NAME_SIZE];
 int status = -ENOMEM;
 int i;

 if (!(controller && bus))
  return -ENODEV;





 for (i = first; i <= last; ++i) {
  slot = kzalloc(sizeof (struct slot), GFP_KERNEL);
  if (!slot)
   goto error;

  hotplug_slot =
   kzalloc(sizeof (struct hotplug_slot), GFP_KERNEL);
  if (!hotplug_slot)
   goto error_slot;
  slot->hotplug_slot = hotplug_slot;

  info = kzalloc(sizeof (struct hotplug_slot_info), GFP_KERNEL);
  if (!info)
   goto error_hpslot;
  hotplug_slot->info = info;

  slot->bus = bus;
  slot->number = i;
  slot->devfn = PCI_DEVFN(i, 0);

  snprintf(name, SLOT_NAME_SIZE, "%02x:%02x", bus->number, i);

  hotplug_slot->private = slot;
  hotplug_slot->release = &release_slot;
  hotplug_slot->ops = &cpci_hotplug_slot_ops;





  dbg("initializing slot %s", name);
  info->power_status = cpci_get_power_status(slot);
  info->attention_status = cpci_get_attention_status(slot);

  dbg("registering slot %s", name);
  status = pci_hp_register(slot->hotplug_slot, bus, i, name);
  if (status) {
   err("pci_hp_register failed with error %d", status);
   goto error_info;
  }
  dbg("slot registered with name: %s", slot_name(slot));


  down_write(&list_rwsem);
  list_add(&slot->slot_list, &slot_list);
  slots++;
  up_write(&list_rwsem);
 }
 return 0;
error_info:
 kfree(info);
error_hpslot:
 kfree(hotplug_slot);
error_slot:
 kfree(slot);
error:
 return status;
}
