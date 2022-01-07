
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc_configuration {TYPE_1__* path; } ;
struct ixgbe_dcb_config {struct tc_configuration* tc_config; } ;
struct TYPE_2__ {int prio_type; } ;


 int MAX_TRAFFIC_CLASS ;

void ixgbe_dcb_unpack_prio(struct ixgbe_dcb_config *cfg, int direction,
       u8 *ptype)
{
 struct tc_configuration *tc_config = &cfg->tc_config[0];
 int tc;

 for (tc = 0; tc < MAX_TRAFFIC_CLASS; tc++)
  ptype[tc] = tc_config[tc].path[direction].prio_type;
}
