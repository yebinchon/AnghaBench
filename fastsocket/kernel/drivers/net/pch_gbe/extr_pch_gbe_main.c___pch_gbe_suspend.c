
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int link_duplex; int link_speed; } ;
struct pch_gbe_hw {TYPE_1__ mac; } ;
struct pch_gbe_adapter {scalar_t__ wake_up_evt; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;


 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pch_gbe_configure_rx (struct pch_gbe_adapter*) ;
 int pch_gbe_down (struct pch_gbe_adapter*) ;
 int pch_gbe_hal_power_down_phy (struct pch_gbe_hw*) ;
 int pch_gbe_mac_set_wol_event (struct pch_gbe_hw*,scalar_t__) ;
 int pch_gbe_set_mode (struct pch_gbe_adapter*,int ,int ) ;
 int pch_gbe_set_multi (struct net_device*) ;
 int pch_gbe_set_rgmii_ctrl (struct pch_gbe_adapter*,int ,int ) ;
 int pch_gbe_setup_rctl (struct pch_gbe_adapter*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int __pch_gbe_suspend(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;
 u32 wufc = adapter->wake_up_evt;
 int retval = 0;

 netif_device_detach(netdev);
 if (netif_running(netdev))
  pch_gbe_down(adapter);
 if (wufc) {
  pch_gbe_set_multi(netdev);
  pch_gbe_setup_rctl(adapter);
  pch_gbe_configure_rx(adapter);
  pch_gbe_set_rgmii_ctrl(adapter, hw->mac.link_speed,
     hw->mac.link_duplex);
  pch_gbe_set_mode(adapter, hw->mac.link_speed,
     hw->mac.link_duplex);
  pch_gbe_mac_set_wol_event(hw, wufc);
  pci_disable_device(pdev);
 } else {
  pch_gbe_hal_power_down_phy(hw);
  pch_gbe_mac_set_wol_event(hw, wufc);
  pci_disable_device(pdev);
 }
 return retval;
}
