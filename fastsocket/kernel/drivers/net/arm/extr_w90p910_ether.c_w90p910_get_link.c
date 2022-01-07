
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w90p910_ether {int mii; } ;
struct net_device {int dummy; } ;


 int mii_link_ok (int *) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 w90p910_get_link(struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);
 return mii_link_ok(&ether->mii);
}
