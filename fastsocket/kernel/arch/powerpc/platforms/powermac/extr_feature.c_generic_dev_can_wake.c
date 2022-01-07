
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_2__ {int board_flags; } ;


 int PMAC_MB_CAN_SLEEP ;
 int PMAC_MB_MAY_SLEEP ;
 TYPE_1__ pmac_mb ;

__attribute__((used)) static long
generic_dev_can_wake(struct device_node *node, long param, long value)
{




 if (pmac_mb.board_flags & PMAC_MB_MAY_SLEEP)
  pmac_mb.board_flags |= PMAC_MB_CAN_SLEEP;
 return 0;
}
