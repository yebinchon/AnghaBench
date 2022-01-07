
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int napi; } ;
struct net_device {int dummy; } ;


 int napi_schedule (int *) ;
 struct netfront_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rx_refill_timeout(unsigned long data)
{
 struct net_device *dev = (struct net_device *)data;
 struct netfront_info *np = netdev_priv(dev);
 napi_schedule(&np->napi);
}
