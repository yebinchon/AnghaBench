
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dev; int is_added; int node; } ;


 int device_unregister (int *) ;
 int down_write (int *) ;
 int list_del (int *) ;
 int pci_bus_sem ;
 int pci_proc_detach_bus (struct pci_bus*) ;
 int pci_remove_legacy_files (struct pci_bus*) ;
 int up_write (int *) ;

void pci_remove_bus(struct pci_bus *pci_bus)
{
 pci_proc_detach_bus(pci_bus);

 down_write(&pci_bus_sem);
 list_del(&pci_bus->node);
 up_write(&pci_bus_sem);
 if (!pci_bus->is_added)
  return;

 pci_remove_legacy_files(pci_bus);
 device_unregister(&pci_bus->dev);
}
