
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_bus {int dummy; } ;
struct hotplug_slot_info {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct TYPE_6__ {TYPE_1__* hotplug_slot; } ;
struct TYPE_5__ {struct TYPE_5__* info; int adapter_status; int * ops; int * release; TYPE_3__* private; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int eeepc_cleanup_pci_hotplug ;
 int eeepc_get_adapter_status (TYPE_1__*,int *) ;
 int eeepc_hotplug_slot_ops ;
 TYPE_3__* ehotk ;
 int kfree (TYPE_1__*) ;
 void* kzalloc (int,int ) ;
 struct pci_bus* pci_find_bus (int ,int) ;
 int pci_hp_register (TYPE_1__*,struct pci_bus*,int ,char*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int eeepc_setup_pci_hotplug(void)
{
 int ret = -ENOMEM;
 struct pci_bus *bus = pci_find_bus(0, 1);

 if (!bus) {
  pr_err("Unable to find wifi PCI bus\n");
  return -ENODEV;
 }

 ehotk->hotplug_slot = kzalloc(sizeof(struct hotplug_slot), GFP_KERNEL);
 if (!ehotk->hotplug_slot)
  goto error_slot;

 ehotk->hotplug_slot->info = kzalloc(sizeof(struct hotplug_slot_info),
         GFP_KERNEL);
 if (!ehotk->hotplug_slot->info)
  goto error_info;

 ehotk->hotplug_slot->private = ehotk;
 ehotk->hotplug_slot->release = &eeepc_cleanup_pci_hotplug;
 ehotk->hotplug_slot->ops = &eeepc_hotplug_slot_ops;
 eeepc_get_adapter_status(ehotk->hotplug_slot,
     &ehotk->hotplug_slot->info->adapter_status);

 ret = pci_hp_register(ehotk->hotplug_slot, bus, 0, "eeepc-wifi");
 if (ret) {
  pr_err("Unable to register hotplug slot - %d\n", ret);
  goto error_register;
 }

 return 0;

error_register:
 kfree(ehotk->hotplug_slot->info);
error_info:
 kfree(ehotk->hotplug_slot);
 ehotk->hotplug_slot = ((void*)0);
error_slot:
 return ret;
}
