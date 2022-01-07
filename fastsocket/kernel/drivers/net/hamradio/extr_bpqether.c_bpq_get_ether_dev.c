
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bpqdev {struct net_device* ethdev; } ;


 struct bpqdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct net_device *bpq_get_ether_dev(struct net_device *dev)
{
 struct bpqdev *bpq = netdev_priv(dev);

 return bpq ? bpq->ethdev : ((void*)0);
}
