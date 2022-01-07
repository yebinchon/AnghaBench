
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bonding {TYPE_1__* dev; } ;
struct TYPE_2__ {int priv_flags; } ;


 int IFF_MASTER_ALB ;

__attribute__((used)) static inline void bond_unset_master_alb_flags(struct bonding *bond)
{
 bond->dev->priv_flags &= ~IFF_MASTER_ALB;
}
