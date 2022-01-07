
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_pci {int dummy; } ;


 int bcma_core_pci_config_fixup (struct bcma_drv_pci*) ;
 int bcma_core_pci_fixcfg (struct bcma_drv_pci*) ;
 int bcma_pcicore_serdes_workaround (struct bcma_drv_pci*) ;

__attribute__((used)) static void bcma_core_pci_clientmode_init(struct bcma_drv_pci *pc)
{
 bcma_core_pci_fixcfg(pc);
 bcma_pcicore_serdes_workaround(pc);
 bcma_core_pci_config_fixup(pc);
}
