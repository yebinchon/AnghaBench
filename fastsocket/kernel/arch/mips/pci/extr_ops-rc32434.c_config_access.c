
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_bus {int number; } ;
struct TYPE_2__ {int pcicfgd; } ;


 unsigned char PCI_ACCESS_WRITE ;
 int PCI_CFG_SET (int ,unsigned int,int ,unsigned char) ;
 int PCI_FUNC (unsigned int) ;
 unsigned int PCI_SLOT (unsigned int) ;
 TYPE_1__* rc32434_pci ;
 int rc32434_sync () ;

__attribute__((used)) static inline int config_access(unsigned char access_type,
    struct pci_bus *bus, unsigned int devfn,
    unsigned char where, u32 *data)
{
 unsigned int slot = PCI_SLOT(devfn);
 u8 func = PCI_FUNC(devfn);


 PCI_CFG_SET(bus->number, slot, func, where);
 rc32434_sync();

 if (access_type == PCI_ACCESS_WRITE)
  rc32434_pci->pcicfgd = *data;
 else
  *data = rc32434_pci->pcicfgd;

 rc32434_sync();

 return 0;
}
