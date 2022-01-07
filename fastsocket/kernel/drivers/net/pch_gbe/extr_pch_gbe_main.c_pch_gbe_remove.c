
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int reg; } ;
struct pch_gbe_adapter {TYPE_1__ hw; int rx_ring; int tx_ring; int reset_task; } ;
struct net_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_gbe_hal_phy_hw_reset (TYPE_1__*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void pch_gbe_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 cancel_work_sync(&adapter->reset_task);
 unregister_netdev(netdev);

 pch_gbe_hal_phy_hw_reset(&adapter->hw);

 kfree(adapter->tx_ring);
 kfree(adapter->rx_ring);

 iounmap(adapter->hw.reg);
 pci_release_regions(pdev);
 free_netdev(netdev);
 pci_disable_device(pdev);
}
