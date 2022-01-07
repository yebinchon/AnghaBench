
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int pci_dev; scalar_t__ membase_phys; int * membase; int net_dev; } ;


 int EFX_MEM_BAR ;
 int drv ;
 int iounmap (int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int pci_disable_device (int ) ;
 int pci_release_region (int ,int ) ;

__attribute__((used)) static void efx_fini_io(struct efx_nic *efx)
{
 netif_dbg(efx, drv, efx->net_dev, "shutting down I/O\n");

 if (efx->membase) {
  iounmap(efx->membase);
  efx->membase = ((void*)0);
 }

 if (efx->membase_phys) {
  pci_release_region(efx->pci_dev, EFX_MEM_BAR);
  efx->membase_phys = 0;
 }

 pci_disable_device(efx->pci_dev);
}
