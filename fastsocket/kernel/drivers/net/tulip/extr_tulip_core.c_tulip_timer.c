
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tulip_private {int media_work; } ;
struct net_device {int dummy; } ;


 struct tulip_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void tulip_timer(unsigned long data)
{
 struct net_device *dev = (struct net_device *)data;
 struct tulip_private *tp = netdev_priv(dev);

 if (netif_running(dev))
  schedule_work(&tp->media_work);
}
