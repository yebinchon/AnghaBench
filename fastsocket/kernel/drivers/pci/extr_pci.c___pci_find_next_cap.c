
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_bus {int dummy; } ;


 int PCI_FIND_CAP_TTL ;
 int __pci_find_next_cap_ttl (struct pci_bus*,unsigned int,int ,int,int*) ;

__attribute__((used)) static int __pci_find_next_cap(struct pci_bus *bus, unsigned int devfn,
          u8 pos, int cap)
{
 int ttl = PCI_FIND_CAP_TTL;

 return __pci_find_next_cap_ttl(bus, devfn, pos, cap, &ttl);
}
