
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int bus_off; } ;
struct can_priv {int restart_ms; int restart_timer; TYPE_2__ can_stats; } ;


 int HZ ;
 int dev_dbg (int ,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

void can_bus_off(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);

 dev_dbg(dev->dev.parent, "bus-off\n");

 netif_carrier_off(dev);
 priv->can_stats.bus_off++;

 if (priv->restart_ms)
  mod_timer(&priv->restart_timer,
     jiffies + (priv->restart_ms * HZ) / 1000);
}
