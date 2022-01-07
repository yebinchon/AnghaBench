
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nic {int mii; } ;
struct net_device {int dummy; } ;


 int mii_link_ok (int *) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 e100_get_link(struct net_device *netdev)
{
 struct nic *nic = netdev_priv(netdev);
 return mii_link_ok(&nic->mii);
}
