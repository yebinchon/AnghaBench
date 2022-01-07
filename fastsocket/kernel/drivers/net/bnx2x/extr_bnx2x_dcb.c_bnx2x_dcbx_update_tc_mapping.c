
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {size_t num_of_cos; TYPE_1__* cos_params; } ;
struct TYPE_6__ {TYPE_2__ ets; } ;
struct bnx2x {size_t* prio_to_cos; int sp_rtnl_task; int sp_rtnl_state; TYPE_3__ dcbx_port_params; } ;
struct TYPE_4__ {int pri_bitmask; } ;


 size_t BNX2X_MAX_PRIORITY ;
 int BNX2X_SP_RTNL_SETUP_TC ;
 int schedule_delayed_work (int *,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline void bnx2x_dcbx_update_tc_mapping(struct bnx2x *bp)
{
 u8 prio, cos;
 for (cos = 0; cos < bp->dcbx_port_params.ets.num_of_cos; cos++) {
  for (prio = 0; prio < BNX2X_MAX_PRIORITY; prio++) {
   if (bp->dcbx_port_params.ets.cos_params[cos].pri_bitmask
       & (1 << prio)) {
    bp->prio_to_cos[prio] = cos;
   }
  }
 }





 if (!test_and_set_bit(BNX2X_SP_RTNL_SETUP_TC, &bp->sp_rtnl_state))
  schedule_delayed_work(&bp->sp_rtnl_task, 0);
}
