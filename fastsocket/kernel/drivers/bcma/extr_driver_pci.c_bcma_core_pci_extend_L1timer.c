
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_pci {int dummy; } ;


 int BCMA_CORE_PCI_ASPMTIMER_EXTEND ;
 int BCMA_CORE_PCI_DLLP_PMTHRESHREG ;
 int bcma_pcie_read (struct bcma_drv_pci*,int ) ;
 int bcma_pcie_write (struct bcma_drv_pci*,int ,int ) ;

void bcma_core_pci_extend_L1timer(struct bcma_drv_pci *pc, bool extend)
{
 u32 w;

 w = bcma_pcie_read(pc, BCMA_CORE_PCI_DLLP_PMTHRESHREG);
 if (extend)
  w |= BCMA_CORE_PCI_ASPMTIMER_EXTEND;
 else
  w &= ~BCMA_CORE_PCI_ASPMTIMER_EXTEND;
 bcma_pcie_write(pc, BCMA_CORE_PCI_DLLP_PMTHRESHREG, w);
 bcma_pcie_read(pc, BCMA_CORE_PCI_DLLP_PMTHRESHREG);
}
