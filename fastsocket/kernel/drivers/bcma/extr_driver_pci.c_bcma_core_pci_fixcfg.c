
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct bcma_drv_pci {struct bcma_device* core; } ;
struct bcma_device {scalar_t__ core_index; } ;


 int BCMA_CORE_PCI_SPROM (int ) ;
 int BCMA_CORE_PCI_SPROM_PI_MASK ;
 int BCMA_CORE_PCI_SPROM_PI_OFFSET ;
 int BCMA_CORE_PCI_SPROM_PI_SHIFT ;
 int pcicore_read16 (struct bcma_drv_pci*,int ) ;
 int pcicore_write16 (struct bcma_drv_pci*,int ,int) ;

__attribute__((used)) static void bcma_core_pci_fixcfg(struct bcma_drv_pci *pc)
{
 struct bcma_device *core = pc->core;
 u16 val16, core_index;
 uint regoff;

 regoff = BCMA_CORE_PCI_SPROM(BCMA_CORE_PCI_SPROM_PI_OFFSET);
 core_index = (u16)core->core_index;

 val16 = pcicore_read16(pc, regoff);
 if (((val16 & BCMA_CORE_PCI_SPROM_PI_MASK) >> BCMA_CORE_PCI_SPROM_PI_SHIFT)
      != core_index) {
  val16 = (core_index << BCMA_CORE_PCI_SPROM_PI_SHIFT) |
   (val16 & ~BCMA_CORE_PCI_SPROM_PI_MASK);
  pcicore_write16(pc, regoff, val16);
 }
}
