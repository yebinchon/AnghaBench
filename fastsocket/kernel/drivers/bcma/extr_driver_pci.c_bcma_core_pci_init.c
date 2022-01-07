
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_pci {scalar_t__ hostmode; scalar_t__ setup_done; } ;


 int bcma_core_pci_clientmode_init (struct bcma_drv_pci*) ;
 int bcma_core_pci_hostmode_init (struct bcma_drv_pci*) ;
 scalar_t__ bcma_core_pci_is_in_hostmode (struct bcma_drv_pci*) ;

void bcma_core_pci_init(struct bcma_drv_pci *pc)
{
 if (pc->setup_done)
  return;







 if (!pc->hostmode)
  bcma_core_pci_clientmode_init(pc);
}
