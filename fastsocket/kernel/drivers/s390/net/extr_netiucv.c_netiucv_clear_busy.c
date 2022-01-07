
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netiucv_priv {int tbusy; } ;
struct net_device {int dummy; } ;


 int clear_bit (int ,int *) ;
 struct netiucv_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static inline void netiucv_clear_busy(struct net_device *dev)
{
 struct netiucv_priv *priv = netdev_priv(dev);
 clear_bit(0, &priv->tbusy);
 netif_wake_queue(dev);
}
