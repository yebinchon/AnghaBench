
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {int hw_addr; } ;
struct ixgbe_adapter {int flags; TYPE_1__ hw; int ixgbe_ieee_ets; int ixgbe_ieee_pfc; int service_task; int state; struct net_device* netdev; } ;


 int IORESOURCE_MEM ;
 int IXGBE_DCA_CTRL ;
 int IXGBE_FLAG_DCA_ENABLED ;
 int IXGBE_WRITE_REG (TYPE_1__*,int ,int) ;
 scalar_t__ NETREG_REGISTERED ;
 int __IXGBE_DOWN ;
 int cancel_work_sync (int *) ;
 int dca_remove_requester (int *) ;
 int e_dev_info (char*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_dbg_adapter_exit (struct ixgbe_adapter*) ;
 int ixgbe_del_sanmac_netdev (struct net_device*) ;
 int ixgbe_disable_sriov (struct ixgbe_adapter*) ;
 int ixgbe_release_hw_control (struct ixgbe_adapter*) ;
 int ixgbe_sysfs_exit (struct ixgbe_adapter*) ;
 int kfree (int ) ;
 scalar_t__ max_vfs ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_selected_regions (struct pci_dev*,int ) ;
 int pci_select_bars (struct pci_dev*,int ) ;
 int set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ixgbe_remove(struct pci_dev *pdev)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 struct net_device *netdev = adapter->netdev;

 ixgbe_dbg_adapter_exit(adapter);

 set_bit(__IXGBE_DOWN, &adapter->state);
 cancel_work_sync(&adapter->service_task);
 ixgbe_del_sanmac_netdev(netdev);

 if (netdev->reg_state == NETREG_REGISTERED)
  unregister_netdev(netdev);
 ixgbe_clear_interrupt_scheme(adapter);

 ixgbe_release_hw_control(adapter);






 iounmap(adapter->hw.hw_addr);
 pci_release_selected_regions(pdev, pci_select_bars(pdev,
         IORESOURCE_MEM));

 e_dev_info("complete\n");

 free_netdev(netdev);

 pci_disable_pcie_error_reporting(pdev);

 pci_disable_device(pdev);
}
