
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* enable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int wol; struct ixgbe_hw hw; struct net_device* netdev; } ;


 int IXGBE_CTRL ;
 int IXGBE_CTRL_GIO_DIS ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_MPE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WUC ;
 int IXGBE_WUFC ;
 int IXGBE_WUFC_MC ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_down (struct ixgbe_adapter*) ;
 int ixgbe_free_all_rx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_all_tx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_irq (struct ixgbe_adapter*) ;



 int ixgbe_release_hw_control (struct ixgbe_adapter*) ;
 int ixgbe_set_rx_mode (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 ctrl, fctrl;
 u32 wufc = adapter->wol;




 netif_device_detach(netdev);

 rtnl_lock();
 if (netif_running(netdev)) {
  ixgbe_down(adapter);
  ixgbe_free_irq(adapter);
  ixgbe_free_all_tx_resources(adapter);
  ixgbe_free_all_rx_resources(adapter);
 }
 rtnl_unlock();

 ixgbe_clear_interrupt_scheme(adapter);







 if (wufc) {
  ixgbe_set_rx_mode(netdev);


  if (hw->mac.ops.enable_tx_laser)
   hw->mac.ops.enable_tx_laser(hw);


  if (wufc & IXGBE_WUFC_MC) {
   fctrl = IXGBE_READ_REG(hw, IXGBE_FCTRL);
   fctrl |= IXGBE_FCTRL_MPE;
   IXGBE_WRITE_REG(hw, IXGBE_FCTRL, fctrl);
  }

  ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
  ctrl |= IXGBE_CTRL_GIO_DIS;
  IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);

  IXGBE_WRITE_REG(hw, IXGBE_WUFC, wufc);
 } else {
  IXGBE_WRITE_REG(hw, IXGBE_WUC, 0);
  IXGBE_WRITE_REG(hw, IXGBE_WUFC, 0);
 }

 switch (hw->mac.type) {
 case 130:
  pci_wake_from_d3(pdev, 0);
  break;
 case 129:
 case 128:
  pci_wake_from_d3(pdev, !!wufc);
  break;
 default:
  break;
 }

 *enable_wake = !!wufc;

 ixgbe_release_hw_control(adapter);

 pci_disable_device(pdev);

 return 0;
}
