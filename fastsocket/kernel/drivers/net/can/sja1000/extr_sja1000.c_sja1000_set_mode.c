
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int open_time; } ;
struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EINVAL ;
 int EOPNOTSUPP ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int sja1000_start (struct net_device*) ;

__attribute__((used)) static int sja1000_set_mode(struct net_device *dev, enum can_mode mode)
{
 struct sja1000_priv *priv = netdev_priv(dev);

 if (!priv->open_time)
  return -EINVAL;

 switch (mode) {
 case 128:
  sja1000_start(dev);
  if (netif_queue_stopped(dev))
   netif_wake_queue(dev);
  break;

 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
