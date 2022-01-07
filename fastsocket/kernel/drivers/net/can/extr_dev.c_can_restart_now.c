
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {scalar_t__ state; int restart_timer; scalar_t__ restart_ms; } ;


 scalar_t__ CAN_STATE_BUS_OFF ;
 int EBUSY ;
 int EINVAL ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 struct can_priv* netdev_priv (struct net_device*) ;

int can_restart_now(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);





 if (priv->restart_ms)
  return -EINVAL;
 if (priv->state != CAN_STATE_BUS_OFF)
  return -EBUSY;


 mod_timer(&priv->restart_timer, jiffies);

 return 0;
}
