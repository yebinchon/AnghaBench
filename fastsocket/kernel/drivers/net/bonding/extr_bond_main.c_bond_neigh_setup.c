
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {TYPE_1__* dev; } ;
struct net_device_ops {int (* ndo_neigh_setup ) (TYPE_1__*,struct neigh_parms*) ;} ;
struct net_device {int dummy; } ;
struct neigh_parms {int dummy; } ;
struct bonding {struct slave* first_slave; } ;
struct TYPE_2__ {struct net_device_ops* netdev_ops; } ;


 struct bonding* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_1__*,struct neigh_parms*) ;

__attribute__((used)) static int bond_neigh_setup(struct net_device *dev, struct neigh_parms *parms)
{
 struct bonding *bond = netdev_priv(dev);
 struct slave *slave = bond->first_slave;

 if (slave) {
  const struct net_device_ops *slave_ops
   = slave->dev->netdev_ops;
  if (slave_ops->ndo_neigh_setup)
   return slave_ops->ndo_neigh_setup(slave->dev, parms);
 }
 return 0;
}
