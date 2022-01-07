
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {TYPE_1__* dev; int state; } ;
struct TYPE_2__ {int priv_flags; } ;


 int BOND_STATE_ACTIVE ;
 int IFF_SLAVE_INACTIVE ;
 int IFF_SLAVE_NEEDARP ;

__attribute__((used)) static inline void bond_set_slave_active_flags(struct slave *slave)
{
 slave->state = BOND_STATE_ACTIVE;
 slave->dev->priv_flags &= ~(IFF_SLAVE_INACTIVE | IFF_SLAVE_NEEDARP);
}
