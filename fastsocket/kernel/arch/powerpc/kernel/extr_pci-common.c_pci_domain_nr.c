
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int global_number; } ;
struct pci_bus {int dummy; } ;


 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;

int pci_domain_nr(struct pci_bus *bus)
{
 struct pci_controller *hose = pci_bus_to_host(bus);

 return hose->global_number;
}
