
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {int hw_addr; } ;
struct ixgbevf_adapter {int rx_ring; int tx_ring; TYPE_1__ hw; int watchdog_task; int reset_task; int watchdog_timer; int state; } ;


 scalar_t__ NETREG_REGISTERED ;
 int __IXGBEVF_DOWN ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int hw_dbg (TYPE_1__*,char*) ;
 int iounmap (int ) ;
 int ixgbevf_clear_interrupt_scheme (struct ixgbevf_adapter*) ;
 int ixgbevf_reset_interrupt_capability (struct ixgbevf_adapter*) ;
 int kfree (int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ixgbevf_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);

 set_bit(__IXGBEVF_DOWN, &adapter->state);

 del_timer_sync(&adapter->watchdog_timer);

 cancel_work_sync(&adapter->reset_task);
 cancel_work_sync(&adapter->watchdog_task);

 if (netdev->reg_state == NETREG_REGISTERED)
  unregister_netdev(netdev);

 ixgbevf_clear_interrupt_scheme(adapter);
 ixgbevf_reset_interrupt_capability(adapter);

 iounmap(adapter->hw.hw_addr);
 pci_release_regions(pdev);

 hw_dbg(&adapter->hw, "Remove complete\n");

 kfree(adapter->tx_ring);
 kfree(adapter->rx_ring);

 free_netdev(netdev);

 pci_disable_device(pdev);
}
