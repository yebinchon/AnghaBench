
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int napi; int netdev; } ;
struct net_device {int dummy; } ;


 int napi_disable (int *) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 int netif_stop_queue (int ) ;

__attribute__((used)) static int xennet_close(struct net_device *dev)
{
 struct netfront_info *np = netdev_priv(dev);
 netif_stop_queue(np->netdev);
 napi_disable(&np->napi);
 return 0;
}
