
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int driver; } ;


 int driver_unregister (int *) ;
 int pci_free_dynids (struct pci_driver*) ;
 int pci_remove_newid_file (struct pci_driver*) ;
 int pci_remove_removeid_file (struct pci_driver*) ;

void
pci_unregister_driver(struct pci_driver *drv)
{
 pci_remove_removeid_file(drv);
 pci_remove_newid_file(drv);
 driver_unregister(&drv->driver);
 pci_free_dynids(drv);
}
