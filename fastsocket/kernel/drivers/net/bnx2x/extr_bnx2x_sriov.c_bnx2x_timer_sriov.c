
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid_bitmap; } ;
struct bnx2x {int sp_rtnl_task; int sp_rtnl_state; TYPE_1__ old_bulletin; } ;


 int BNX2X_SP_RTNL_VFPF_CHANNEL_DOWN ;
 int CHANNEL_DOWN ;
 int bnx2x_sample_bulletin (struct bnx2x*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

void bnx2x_timer_sriov(struct bnx2x *bp)
{
 bnx2x_sample_bulletin(bp);


 if (bp->old_bulletin.valid_bitmap & 1 << CHANNEL_DOWN) {
  smp_mb__before_clear_bit();
  set_bit(BNX2X_SP_RTNL_VFPF_CHANNEL_DOWN,
   &bp->sp_rtnl_state);
  smp_mb__after_clear_bit();
  schedule_delayed_work(&bp->sp_rtnl_task, 0);
 }
}
