
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int dev; } ;
struct net_device {int name; } ;
struct atl1e_hw {int dummy; } ;
struct atl1e_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; struct pci_dev* pdev; struct net_device* netdev; struct atl1e_hw hw; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int ) ;
 scalar_t__ BMSR_LSTATUS ;
 scalar_t__ FULL_DUPLEX ;
 int MAC_CTRL_RX_EN ;
 int MII_BMSR ;
 int REG_MAC_CTRL ;
 scalar_t__ SPEED_0 ;
 int atl1e_driver_name ;
 int atl1e_get_speed_and_duplex (struct atl1e_hw*,scalar_t__*,scalar_t__*) ;
 int atl1e_read_phy_reg (struct atl1e_hw*,int ,scalar_t__*) ;
 int atl1e_setup_mac_ctrl (struct atl1e_adapter*) ;
 int dev_info (int *,char*,int ,int ,scalar_t__,char*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl1e_check_link(struct atl1e_adapter *adapter)
{
 struct atl1e_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 int err = 0;
 u16 speed, duplex, phy_data;


 atl1e_read_phy_reg(hw, MII_BMSR, &phy_data);
 atl1e_read_phy_reg(hw, MII_BMSR, &phy_data);
 if ((phy_data & BMSR_LSTATUS) == 0) {

  if (netif_carrier_ok(netdev)) {
   u32 value;

   value = AT_READ_REG(hw, REG_MAC_CTRL);
   value &= ~MAC_CTRL_RX_EN;
   AT_WRITE_REG(hw, REG_MAC_CTRL, value);
   adapter->link_speed = SPEED_0;
   netif_carrier_off(netdev);
   netif_stop_queue(netdev);
  }
 } else {

  err = atl1e_get_speed_and_duplex(hw, &speed, &duplex);
  if (unlikely(err))
   return err;


  if (adapter->link_speed != speed ||
      adapter->link_duplex != duplex) {
   adapter->link_speed = speed;
   adapter->link_duplex = duplex;
   atl1e_setup_mac_ctrl(adapter);
   dev_info(&pdev->dev,
    "%s: %s NIC Link is Up<%d Mbps %s>\n",
    atl1e_driver_name, netdev->name,
    adapter->link_speed,
    adapter->link_duplex == FULL_DUPLEX ?
    "Full Duplex" : "Half Duplex");
  }

  if (!netif_carrier_ok(netdev)) {

   netif_carrier_on(netdev);
   netif_wake_queue(netdev);
  }
 }
 return 0;
}
