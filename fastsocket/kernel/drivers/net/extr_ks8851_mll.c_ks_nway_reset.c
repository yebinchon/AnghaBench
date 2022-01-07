
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_net {int mii; } ;


 int mii_nway_restart (int *) ;
 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_nway_reset(struct net_device *netdev)
{
 struct ks_net *ks = netdev_priv(netdev);
 return mii_nway_restart(&ks->mii);
}
