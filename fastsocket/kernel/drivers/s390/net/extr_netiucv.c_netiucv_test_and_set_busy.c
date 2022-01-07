
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netiucv_priv {int tbusy; } ;
struct net_device {int dummy; } ;


 struct netiucv_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline int netiucv_test_and_set_busy(struct net_device *dev)
{
 struct netiucv_priv *priv = netdev_priv(dev);
 netif_stop_queue(dev);
 return test_and_set_bit(0, &priv->tbusy);
}
