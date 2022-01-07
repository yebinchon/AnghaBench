
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {int restart_timer; int state; } ;


 int CAN_STATE_STOPPED ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 int can_setup ;
 int init_timer (int *) ;
 struct can_priv* netdev_priv (struct net_device*) ;

struct net_device *alloc_candev(int sizeof_priv)
{
 struct net_device *dev;
 struct can_priv *priv;

 dev = alloc_netdev(sizeof_priv, "can%d", can_setup);
 if (!dev)
  return ((void*)0);

 priv = netdev_priv(dev);

 priv->state = CAN_STATE_STOPPED;

 init_timer(&priv->restart_timer);

 return dev;
}
