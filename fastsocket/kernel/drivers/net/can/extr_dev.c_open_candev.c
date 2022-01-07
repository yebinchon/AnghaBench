
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int bitrate; int tq; } ;
struct can_priv {int restart_timer; TYPE_1__ bittiming; } ;


 int EINVAL ;
 int can_restart ;
 int dev_err (int ,char*) ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int setup_timer (int *,int ,unsigned long) ;

int open_candev(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);

 if (!priv->bittiming.tq && !priv->bittiming.bitrate) {
  dev_err(dev->dev.parent, "bit-timing not yet defined\n");
  return -EINVAL;
 }


 if (!netif_carrier_ok(dev))
  netif_carrier_on(dev);

 setup_timer(&priv->restart_timer, can_restart, (unsigned long)dev);

 return 0;
}
