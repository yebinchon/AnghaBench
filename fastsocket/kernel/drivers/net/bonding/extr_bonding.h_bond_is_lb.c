
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct bonding {TYPE_1__ params; } ;


 scalar_t__ BOND_MODE_ALB ;
 scalar_t__ BOND_MODE_TLB ;

__attribute__((used)) static inline bool bond_is_lb(const struct bonding *bond)
{
 return bond->params.mode == BOND_MODE_TLB
  || bond->params.mode == BOND_MODE_ALB;
}
