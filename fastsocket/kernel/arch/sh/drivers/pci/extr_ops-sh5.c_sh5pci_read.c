
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int CONFIG_CMD (struct pci_bus*,unsigned int,int) ;
 int PAR ;
 int PCIBIOS_SUCCESSFUL ;
 int PDR ;
 int SH5PCI_READ (int ) ;
 int SH5PCI_READ_BYTE (int ) ;
 int SH5PCI_READ_SHORT (int ) ;
 int SH5PCI_WRITE (int ,int ) ;

__attribute__((used)) static int sh5pci_read(struct pci_bus *bus, unsigned int devfn, int where,
   int size, u32 *val)
{
 SH5PCI_WRITE(PAR, CONFIG_CMD(bus, devfn, where));

 switch (size) {
  case 1:
   *val = (u8)SH5PCI_READ_BYTE(PDR + (where & 3));
   break;
  case 2:
   *val = (u16)SH5PCI_READ_SHORT(PDR + (where & 2));
   break;
  case 4:
   *val = SH5PCI_READ(PDR);
   break;
 }

 return PCIBIOS_SUCCESSFUL;
}
