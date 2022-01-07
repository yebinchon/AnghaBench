
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct efx_nic {int net_dev; } ;


 int dev_close (int ) ;
 int drv ;
 int efx_fini_io (struct efx_nic*) ;
 int efx_fini_struct (struct efx_nic*) ;
 int efx_mtd_remove (struct efx_nic*) ;
 int efx_pci_remove_main (struct efx_nic*) ;
 int efx_sriov_fini (struct efx_nic*) ;
 int efx_stop_interrupts (struct efx_nic*,int) ;
 int efx_unregister_netdev (struct efx_nic*) ;
 int free_netdev (int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct efx_nic* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void efx_pci_remove(struct pci_dev *pci_dev)
{
 struct efx_nic *efx;

 efx = pci_get_drvdata(pci_dev);
 if (!efx)
  return;


 rtnl_lock();
 dev_close(efx->net_dev);
 efx_stop_interrupts(efx, 0);
 rtnl_unlock();

 efx_sriov_fini(efx);
 efx_unregister_netdev(efx);

 efx_mtd_remove(efx);

 efx_pci_remove_main(efx);

 efx_fini_io(efx);
 netif_dbg(efx, drv, efx->net_dev, "shutdown successful\n");

 efx_fini_struct(efx);
 pci_set_drvdata(pci_dev, ((void*)0));
 free_netdev(efx->net_dev);

 pci_disable_pcie_error_reporting(pci_dev);
}
