
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_2__* dev; int state; } ;
struct TYPE_3__ {int all_slaves_active; } ;
struct bonding {TYPE_1__ params; } ;
struct TYPE_4__ {int priv_flags; int master; } ;


 int BOND_STATE_BACKUP ;
 int IFF_SLAVE_INACTIVE ;
 int IFF_SLAVE_NEEDARP ;
 int bond_is_lb (struct bonding*) ;
 struct bonding* netdev_priv (int ) ;
 scalar_t__ slave_do_arp_validate (struct bonding*,struct slave*) ;

__attribute__((used)) static inline void bond_set_slave_inactive_flags(struct slave *slave)
{
 struct bonding *bond = netdev_priv(slave->dev->master);
 if (!bond_is_lb(bond))
  slave->state = BOND_STATE_BACKUP;
 if (!bond->params.all_slaves_active)
  slave->dev->priv_flags |= IFF_SLAVE_INACTIVE;
 if (slave_do_arp_validate(bond, slave))
  slave->dev->priv_flags |= IFF_SLAVE_NEEDARP;
}
