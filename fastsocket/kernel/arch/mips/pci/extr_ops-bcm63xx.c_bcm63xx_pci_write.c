
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; scalar_t__ parent; } ;


 scalar_t__ CARDBUS_PCI_IDSEL ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 scalar_t__ PCI_SLOT (unsigned int) ;
 int bcm63xx_do_cfg_write (int,int ,unsigned int,int,int,int ) ;

__attribute__((used)) static int bcm63xx_pci_write(struct pci_bus *bus, unsigned int devfn,
         int where, int size, u32 val)
{
 int type;

 type = bus->parent ? 1 : 0;

 if (type == 0 && PCI_SLOT(devfn) == CARDBUS_PCI_IDSEL)
  return PCIBIOS_DEVICE_NOT_FOUND;

 return bcm63xx_do_cfg_write(type, bus->number, devfn,
         where, size, val);
}
