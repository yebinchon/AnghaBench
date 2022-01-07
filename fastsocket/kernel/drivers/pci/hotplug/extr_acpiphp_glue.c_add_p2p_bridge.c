
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpiphp_bridge {TYPE_2__* pci_dev; int res_lock; TYPE_1__* pci_bus; int * handle; int type; } ;
typedef int acpi_handle ;
struct TYPE_5__ {TYPE_1__* subordinate; } ;
struct TYPE_4__ {int dev; } ;


 int BRIDGE_TYPE_P2P ;
 int GFP_KERNEL ;
 TYPE_2__* acpi_get_pci_dev (int *) ;
 int config_p2p_bridge_flags (struct acpiphp_bridge*) ;
 int err (char*) ;
 int get_device (int *) ;
 int init_bridge_misc (struct acpiphp_bridge*) ;
 int kfree (struct acpiphp_bridge*) ;
 struct acpiphp_bridge* kzalloc (int,int ) ;
 int pci_dev_put (TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void add_p2p_bridge(acpi_handle *handle)
{
 struct acpiphp_bridge *bridge;

 bridge = kzalloc(sizeof(struct acpiphp_bridge), GFP_KERNEL);
 if (bridge == ((void*)0)) {
  err("out of memory\n");
  return;
 }

 bridge->type = BRIDGE_TYPE_P2P;
 bridge->handle = handle;
 config_p2p_bridge_flags(bridge);

 bridge->pci_dev = acpi_get_pci_dev(handle);
 bridge->pci_bus = bridge->pci_dev->subordinate;
 if (!bridge->pci_bus) {
  err("This is not a PCI-to-PCI bridge!\n");
  goto err;
 }






 get_device(&bridge->pci_bus->dev);
 spin_lock_init(&bridge->res_lock);

 init_bridge_misc(bridge);
 return;
 err:
 pci_dev_put(bridge->pci_dev);
 kfree(bridge);
 return;
}
