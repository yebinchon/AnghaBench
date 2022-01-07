
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {scalar_t__ autoneg; } ;
struct net_device {int dummy; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int skge_phy_reset (struct skge_port*) ;

__attribute__((used)) static int skge_nway_reset(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);

 if (skge->autoneg != AUTONEG_ENABLE || !netif_running(dev))
  return -EINVAL;

 skge_phy_reset(skge);
 return 0;
}
