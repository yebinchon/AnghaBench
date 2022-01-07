
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 struct pci_bus* pci_do_find_bus (struct pci_bus*,int) ;
 int pci_domain_nr (struct pci_bus*) ;
 struct pci_bus* pci_find_next_bus (struct pci_bus*) ;

struct pci_bus * pci_find_bus(int domain, int busnr)
{
 struct pci_bus *bus = ((void*)0);
 struct pci_bus *tmp_bus;

 while ((bus = pci_find_next_bus(bus)) != ((void*)0)) {
  if (pci_domain_nr(bus) != domain)
   continue;
  tmp_bus = pci_do_find_bus(bus, busnr);
  if (tmp_bus)
   return tmp_bus;
 }
 return ((void*)0);
}
