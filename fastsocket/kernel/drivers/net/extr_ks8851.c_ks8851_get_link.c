
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ks8851_net {int mii; } ;


 int mii_link_ok (int *) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ks8851_get_link(struct net_device *dev)
{
 struct ks8851_net *ks = netdev_priv(dev);
 return mii_link_ok(&ks->mii);
}
