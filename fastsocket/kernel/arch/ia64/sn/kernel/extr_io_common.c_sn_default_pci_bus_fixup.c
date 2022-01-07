
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcibus_bussoft {int dummy; } ;
struct pci_controller {int dummy; } ;



__attribute__((used)) static void *
sn_default_pci_bus_fixup(struct pcibus_bussoft *soft, struct pci_controller *controller)
{
 return ((void*)0);
}
