
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int SPIDER_NET_MAX_MTU ;
 int SPIDER_NET_MIN_MTU ;

__attribute__((used)) static int
spider_net_change_mtu(struct net_device *netdev, int new_mtu)
{


 if ( (new_mtu < SPIDER_NET_MIN_MTU ) ||
  (new_mtu > SPIDER_NET_MAX_MTU) )
  return -EINVAL;
 netdev->mtu = new_mtu;
 return 0;
}
