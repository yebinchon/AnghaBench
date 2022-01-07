
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {void* flow_control; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;


 void* FLOW_MODE_LOC_SEND ;
 void* FLOW_MODE_NONE ;
 void* FLOW_MODE_SYMMETRIC ;
 void* FLOW_MODE_SYM_OR_REM ;
 int dev_close (struct net_device*) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int skge_down (struct net_device*) ;
 int skge_get_pauseparam (struct net_device*,struct ethtool_pauseparam*) ;
 int skge_up (struct net_device*) ;

__attribute__((used)) static int skge_set_pauseparam(struct net_device *dev,
          struct ethtool_pauseparam *ecmd)
{
 struct skge_port *skge = netdev_priv(dev);
 struct ethtool_pauseparam old;
 int err = 0;

 skge_get_pauseparam(dev, &old);

 if (ecmd->autoneg != old.autoneg)
  skge->flow_control = ecmd->autoneg ? FLOW_MODE_NONE : FLOW_MODE_SYMMETRIC;
 else {
  if (ecmd->rx_pause && ecmd->tx_pause)
   skge->flow_control = FLOW_MODE_SYMMETRIC;
  else if (ecmd->rx_pause && !ecmd->tx_pause)
   skge->flow_control = FLOW_MODE_SYM_OR_REM;
  else if (!ecmd->rx_pause && ecmd->tx_pause)
   skge->flow_control = FLOW_MODE_LOC_SEND;
  else
   skge->flow_control = FLOW_MODE_NONE;
 }

 if (netif_running(dev)) {
  skge_down(dev);
  err = skge_up(dev);
  if (err) {
   dev_close(dev);
   return err;
  }
 }

 return 0;
}
