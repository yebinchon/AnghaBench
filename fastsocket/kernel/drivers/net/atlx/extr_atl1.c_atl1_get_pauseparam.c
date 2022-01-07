
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct atl1_hw {scalar_t__ media_type; } ;
struct atl1_adapter {struct atl1_hw hw; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ MEDIA_TYPE_1000M_FULL ;
 scalar_t__ MEDIA_TYPE_AUTO_SENSOR ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1_get_pauseparam(struct net_device *netdev,
 struct ethtool_pauseparam *epause)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 struct atl1_hw *hw = &adapter->hw;

 if (hw->media_type == MEDIA_TYPE_AUTO_SENSOR ||
     hw->media_type == MEDIA_TYPE_1000M_FULL) {
  epause->autoneg = AUTONEG_ENABLE;
 } else {
  epause->autoneg = AUTONEG_DISABLE;
 }
 epause->rx_pause = 1;
 epause->tx_pause = 1;
}
