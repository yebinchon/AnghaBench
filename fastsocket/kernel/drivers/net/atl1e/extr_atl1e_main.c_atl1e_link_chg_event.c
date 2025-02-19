
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct net_device {int name; } ;
struct atl1e_adapter {int link_chg_task; int link_speed; int mdio_lock; int hw; struct pci_dev* pdev; struct net_device* netdev; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int SPEED_0 ;
 int atl1e_driver_name ;
 int atl1e_read_phy_reg (int *,int ,int*) ;
 int dev_info (int *,char*,int ,int ) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void atl1e_link_chg_event(struct atl1e_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 u16 phy_data = 0;
 u16 link_up = 0;

 spin_lock(&adapter->mdio_lock);
 atl1e_read_phy_reg(&adapter->hw, MII_BMSR, &phy_data);
 atl1e_read_phy_reg(&adapter->hw, MII_BMSR, &phy_data);
 spin_unlock(&adapter->mdio_lock);
 link_up = phy_data & BMSR_LSTATUS;

 if (!link_up) {
  if (netif_carrier_ok(netdev)) {

   dev_info(&pdev->dev, "%s: %s NIC Link is Down\n",
     atl1e_driver_name, netdev->name);
   adapter->link_speed = SPEED_0;
   netif_stop_queue(netdev);
  }
 }
 schedule_work(&adapter->link_chg_task);
}
