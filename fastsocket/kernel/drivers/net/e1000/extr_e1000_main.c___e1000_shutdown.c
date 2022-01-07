
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ mac_type; scalar_t__ media_type; } ;
struct e1000_adapter {int wol; scalar_t__ en_mng_pt; int flags; struct e1000_hw hw; } ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_ADVD3WUC ;
 int E1000_CTRL_EN_PHY_PWR_MGMT ;
 int E1000_CTRL_EXT_SDP7_DATA ;
 int E1000_RCTL_EN ;
 int E1000_RCTL_MPE ;
 int E1000_STATUS_LU ;
 int E1000_WUC_PME_EN ;
 int E1000_WUFC_LNKC ;
 int E1000_WUFC_MC ;
 int RCTL ;
 int STATUS ;
 int WARN_ON (int ) ;
 int WUC ;
 int WUFC ;
 int __E1000_RESETTING ;
 scalar_t__ e1000_82540 ;
 int e1000_down (struct e1000_adapter*) ;
 int e1000_free_irq (struct e1000_adapter*) ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int e1000_release_manageability (struct e1000_adapter*) ;
 int e1000_set_rx_mode (struct net_device*) ;
 int e1000_setup_rctl (struct e1000_adapter*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl, ctrl_ext, rctl, status;
 u32 wufc = adapter->wol;




 netif_device_detach(netdev);

 if (netif_running(netdev)) {
  WARN_ON(test_bit(__E1000_RESETTING, &adapter->flags));
  e1000_down(adapter);
 }







 status = er32(STATUS);
 if (status & E1000_STATUS_LU)
  wufc &= ~E1000_WUFC_LNKC;

 if (wufc) {
  e1000_setup_rctl(adapter);
  e1000_set_rx_mode(netdev);

  rctl = er32(RCTL);


  if (wufc & E1000_WUFC_MC)
   rctl |= E1000_RCTL_MPE;


  ew32(RCTL, rctl | E1000_RCTL_EN);

  if (hw->mac_type >= e1000_82540) {
   ctrl = er32(CTRL);




   ctrl |= 0x00100000 |
    0x00200000;
   ew32(CTRL, ctrl);
  }

  if (hw->media_type == e1000_media_type_fiber ||
      hw->media_type == e1000_media_type_internal_serdes) {

   ctrl_ext = er32(CTRL_EXT);
   ctrl_ext |= E1000_CTRL_EXT_SDP7_DATA;
   ew32(CTRL_EXT, ctrl_ext);
  }

  ew32(WUC, E1000_WUC_PME_EN);
  ew32(WUFC, wufc);
 } else {
  ew32(WUC, 0);
  ew32(WUFC, 0);
 }

 e1000_release_manageability(adapter);

 *enable_wake = !!wufc;


 if (adapter->en_mng_pt)
  *enable_wake = 1;

 if (netif_running(netdev))
  e1000_free_irq(adapter);

 pci_disable_device(pdev);

 return 0;
}
