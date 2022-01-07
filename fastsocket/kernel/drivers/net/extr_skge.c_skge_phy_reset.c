
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int port; int netdev; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ chip_id; int phy_lock; struct net_device** dev; } ;
struct net_device {int dummy; } ;


 scalar_t__ CHIP_ID_GENESIS ;
 int genesis_mac_init (struct skge_hw*,int) ;
 int genesis_reset (struct skge_hw*,int) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 int skge_set_multicast (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int yukon_init (struct skge_hw*,int) ;
 int yukon_reset (struct skge_hw*,int) ;

__attribute__((used)) static void skge_phy_reset(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 struct net_device *dev = hw->dev[port];

 netif_stop_queue(skge->netdev);
 netif_carrier_off(skge->netdev);

 spin_lock_bh(&hw->phy_lock);
 if (hw->chip_id == CHIP_ID_GENESIS) {
  genesis_reset(hw, port);
  genesis_mac_init(hw, port);
 } else {
  yukon_reset(hw, port);
  yukon_init(hw, port);
 }
 spin_unlock_bh(&hw->phy_lock);

 skge_set_multicast(dev);
}
