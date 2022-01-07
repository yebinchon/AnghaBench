
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ autoneg; } ;
struct niu {TYPE_1__ link_config; } ;
struct net_device {int dummy; } ;


 struct niu* netdev_priv (struct net_device*) ;
 int niu_init_link (struct niu*) ;

__attribute__((used)) static int niu_nway_reset(struct net_device *dev)
{
 struct niu *np = netdev_priv(dev);

 if (np->link_config.autoneg)
  return niu_init_link(np);

 return 0;
}
