
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {TYPE_1__* dev; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {int master; } ;


 scalar_t__ netdev_priv (int ) ;

__attribute__((used)) static inline struct bonding *bond_get_bond_by_slave(struct slave *slave)
{
 if (!slave || !slave->dev->master) {
  return ((void*)0);
 }

 return (struct bonding *)netdev_priv(slave->dev->master);
}
