
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct bcma_drv_pci {int dummy; } ;


 int BCMA_CORE_PCI_SPROM (int ) ;
 int BCMA_CORE_PCI_SPROM_L23READY_EXIT_NOPERST ;
 int BCMA_CORE_PCI_SPROM_MISC_CONFIG ;
 int pcicore_read16 (struct bcma_drv_pci*,int ) ;
 int pcicore_write16 (struct bcma_drv_pci*,int ,int) ;

__attribute__((used)) static void bcma_core_pci_config_fixup(struct bcma_drv_pci *pc)
{
 u16 val16;
 uint regoff;

 regoff = BCMA_CORE_PCI_SPROM(BCMA_CORE_PCI_SPROM_MISC_CONFIG);

 val16 = pcicore_read16(pc, regoff);

 if (!(val16 & BCMA_CORE_PCI_SPROM_L23READY_EXIT_NOPERST)) {
  val16 |= BCMA_CORE_PCI_SPROM_L23READY_EXIT_NOPERST;
  pcicore_write16(pc, regoff, val16);
 }
}
