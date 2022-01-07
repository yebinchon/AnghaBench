
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IXP23XX_PCI_CFG0_VIRT ;
 unsigned int IXP23XX_PCI_CFG1_VIRT ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;

__attribute__((used)) static u32
*ixp23xx_pci_config_addr(unsigned int bus_nr, unsigned int devfn, int where)
{
 u32 *paddress;




 where &= ~3;




 if (!bus_nr) {
  if (PCI_SLOT(devfn) >= 8)
   return 0;

  paddress = (u32 *) (IXP23XX_PCI_CFG0_VIRT
        | (1 << (PCI_SLOT(devfn) + 16))
        | (PCI_FUNC(devfn) << 8) | where);
 } else {
  paddress = (u32 *) (IXP23XX_PCI_CFG1_VIRT
        | (bus_nr << 16)
        | (PCI_SLOT(devfn) << 11)
        | (PCI_FUNC(devfn) << 8) | where);
 }

 return paddress;
}
