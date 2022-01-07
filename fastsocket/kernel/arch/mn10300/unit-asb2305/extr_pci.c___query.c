
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;


 unsigned int PCI_DEVFN (int,int ) ;

__attribute__((used)) static inline int __query(const struct pci_bus *bus, unsigned int devfn)
{






 return 1;
}
