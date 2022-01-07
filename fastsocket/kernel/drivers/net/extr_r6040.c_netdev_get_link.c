
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r6040_private {int mii_if; } ;
struct net_device {int dummy; } ;


 int mii_link_ok (int *) ;
 struct r6040_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netdev_get_link(struct net_device *dev)
{
 struct r6040_private *rp = netdev_priv(dev);

 return mii_link_ok(&rp->mii_if);
}
