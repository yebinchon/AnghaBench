
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int name; } ;
struct atlx_adapter {int phy_timer_pending; int link_chg_task; int link_speed; TYPE_1__* pdev; int lock; int hw; struct net_device* netdev; } ;
struct TYPE_2__ {int dev; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int SPEED_0 ;
 int atlx_read_phy_reg (int *,int ,int*) ;
 int dev_info (int *,char*,int ) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void atlx_check_for_link(struct atlx_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 u16 phy_data = 0;

 spin_lock(&adapter->lock);
 adapter->phy_timer_pending = 0;
 atlx_read_phy_reg(&adapter->hw, MII_BMSR, &phy_data);
 atlx_read_phy_reg(&adapter->hw, MII_BMSR, &phy_data);
 spin_unlock(&adapter->lock);


 if (!(phy_data & BMSR_LSTATUS)) {

  if (netif_carrier_ok(netdev)) {

   dev_info(&adapter->pdev->dev, "%s link is down\n",
    netdev->name);
   adapter->link_speed = SPEED_0;
   netif_carrier_off(netdev);
  }
 }
 schedule_work(&adapter->link_chg_task);
}
