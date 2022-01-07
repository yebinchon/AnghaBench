
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_adapter {int netdev; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_10000 ;
 int ixgb_down (struct ixgb_adapter*,int) ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_set_speed_duplex (struct net_device*) ;
 int ixgb_up (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int
ixgb_set_settings(struct net_device *netdev, struct ethtool_cmd *ecmd)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 if (ecmd->autoneg == AUTONEG_ENABLE ||
    ecmd->speed + ecmd->duplex != SPEED_10000 + DUPLEX_FULL)
  return -EINVAL;

 if (netif_running(adapter->netdev)) {
  ixgb_down(adapter, 1);
  ixgb_reset(adapter);
  ixgb_up(adapter);
  ixgb_set_speed_duplex(netdev);
 } else
  ixgb_reset(adapter);

 return 0;
}
