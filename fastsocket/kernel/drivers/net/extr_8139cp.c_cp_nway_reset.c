
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cp_private {int mii_if; } ;


 int mii_nway_restart (int *) ;
 struct cp_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cp_nway_reset(struct net_device *dev)
{
 struct cp_private *cp = netdev_priv(dev);
 return mii_nway_restart(&cp->mii_if);
}
