
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int DBG (char*,int,int,int ,int ,int ) ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int* bytemask ;
 int* ixp23xx_pci_config_addr (int ,unsigned int,int) ;
 scalar_t__ pci_master_aborts ;

__attribute__((used)) static int ixp23xx_pci_read_config(struct pci_bus *bus, unsigned int devfn,
    int where, int size, u32 *value)
{
 u32 n;
 u32 *addr;

 n = where % 4;

 DBG("In config_read(%d) %d from dev %d:%d:%d\n", size, where,
  bus->number, PCI_SLOT(devfn), PCI_FUNC(devfn));

 addr = ixp23xx_pci_config_addr(bus->number, devfn, where);
 if (!addr)
  return PCIBIOS_DEVICE_NOT_FOUND;

 pci_master_aborts = 0;
 *value = (*addr >> (8*n)) & bytemask[size];
 if (pci_master_aborts) {
   pci_master_aborts = 0;
   *value = 0xffffffff;
   return PCIBIOS_DEVICE_NOT_FOUND;
  }

 return PCIBIOS_SUCCESSFUL;
}
