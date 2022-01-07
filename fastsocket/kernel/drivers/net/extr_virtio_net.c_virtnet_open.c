
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int refill; int st_wq; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int try_fill_recv (struct virtnet_info*,int ) ;
 int virtnet_napi_enable (struct virtnet_info*) ;

__attribute__((used)) static int virtnet_open(struct net_device *dev)
{
 struct virtnet_info *vi = netdev_priv(dev);


 if (!try_fill_recv(vi, GFP_KERNEL))
  queue_delayed_work(vi->st_wq, &vi->refill, 0);

 virtnet_napi_enable(vi);
 return 0;
}
