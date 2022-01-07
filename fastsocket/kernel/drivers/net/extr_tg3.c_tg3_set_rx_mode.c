
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;
struct net_device {int dummy; } ;


 int __tg3_set_rx_mode (struct net_device*) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int tg3_full_lock (struct tg3*,int ) ;
 int tg3_full_unlock (struct tg3*) ;

__attribute__((used)) static void tg3_set_rx_mode(struct net_device *dev)
{
 struct tg3 *tp = netdev_priv(dev);

 if (!netif_running(dev))
  return;

 tg3_full_lock(tp, 0);
 __tg3_set_rx_mode(dev);
 tg3_full_unlock(tp);
}
