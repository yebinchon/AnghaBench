
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int TITAN_PCI_0_CONFIG_ADDRESS ;
 int TITAN_PCI_0_CONFIG_DATA ;
 int ocd_writeb (int,int ) ;
 int ocd_writel (int,int ) ;
 int ocd_writew (int,int ) ;

__attribute__((used)) static int titan_write_config(struct pci_bus *bus, unsigned int devfn, int reg,
 int size, u32 val)
{
 uint32_t address;
 int dev, busno, func;

 busno = bus->number;
 dev = PCI_SLOT(devfn);
 func = PCI_FUNC(devfn);

 address = (busno << 16) | (dev << 11) | (func << 8) |
  (reg & 0xfc) | 0x80000000;


 ocd_writel(address, TITAN_PCI_0_CONFIG_ADDRESS);


 switch (size) {
 case 1:
  ocd_writeb(val, TITAN_PCI_0_CONFIG_DATA + (~reg & 0x3));
  break;

 case 2:
  ocd_writew(val, TITAN_PCI_0_CONFIG_DATA + (~reg & 0x2));
  break;

 case 4:
  ocd_writel(val, TITAN_PCI_0_CONFIG_DATA);
  break;
 }

 return PCIBIOS_SUCCESSFUL;
}
