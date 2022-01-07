
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int napi; int refill; } ;
struct net_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 int napi_disable (int *) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int virtnet_close(struct net_device *dev)
{
 struct virtnet_info *vi = netdev_priv(dev);


 cancel_delayed_work_sync(&vi->refill);
 napi_disable(&vi->napi);

 return 0;
}
