
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int mii; } ;
typedef TYPE_1__ pegasus_t ;


 int mii_link_ok (int *) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 pegasus_get_link(struct net_device *dev)
{
 pegasus_t *pegasus = netdev_priv(dev);
 return mii_link_ok(&pegasus->mii);
}
