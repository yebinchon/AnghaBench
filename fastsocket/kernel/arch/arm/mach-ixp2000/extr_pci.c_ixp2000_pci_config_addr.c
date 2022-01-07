
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IXP2000_PCI_CFG0_VIRT_BASE ;
 unsigned int IXP2000_PCI_CFG1_VIRT_BASE ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;

u32 *
ixp2000_pci_config_addr(unsigned int bus_nr, unsigned int devfn, int where)
{
 u32 *paddress;

 if (PCI_SLOT(devfn) > 7)
  return 0;


 where &= ~3;




 if (!bus_nr) {

  paddress = (u32 *) (IXP2000_PCI_CFG0_VIRT_BASE
        | (1 << (PCI_SLOT(devfn) + 16))
        | (PCI_FUNC(devfn) << 8) | where);
 } else {
  paddress = (u32 *) (IXP2000_PCI_CFG1_VIRT_BASE
        | (bus_nr << 16)
        | (PCI_SLOT(devfn) << 11)
        | (PCI_FUNC(devfn) << 8) | where);
 }

 return paddress;
}
