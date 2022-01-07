
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_bridge {int res_lock; int pci_bus; int * handle; int type; } ;
struct acpi_pci_root {int bus; } ;
typedef int acpi_handle ;


 int BRIDGE_TYPE_HOST ;
 int GFP_KERNEL ;
 struct acpi_pci_root* acpi_pci_find_root (int *) ;
 int init_bridge_misc (struct acpiphp_bridge*) ;
 struct acpiphp_bridge* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void add_host_bridge(acpi_handle *handle)
{
 struct acpiphp_bridge *bridge;
 struct acpi_pci_root *root = acpi_pci_find_root(handle);

 bridge = kzalloc(sizeof(struct acpiphp_bridge), GFP_KERNEL);
 if (bridge == ((void*)0))
  return;

 bridge->type = BRIDGE_TYPE_HOST;
 bridge->handle = handle;

 bridge->pci_bus = root->bus;

 spin_lock_init(&bridge->res_lock);

 init_bridge_misc(bridge);
}
