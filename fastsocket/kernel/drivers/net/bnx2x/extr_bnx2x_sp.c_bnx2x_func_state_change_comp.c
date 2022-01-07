
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_sp_obj {unsigned long pending; int next_state; int state; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_func_cmd { ____Placeholder_bnx2x_func_cmd } bnx2x_func_cmd ;


 int BNX2X_ERR (char*,int,int ,int ,unsigned long,int ) ;
 int BNX2X_F_STATE_MAX ;
 int BNX2X_MSG_SP ;
 int BP_FUNC (struct bnx2x*) ;
 int DP (int ,char*,int,int ,int ) ;
 int EINVAL ;
 int clear_bit (int,unsigned long*) ;
 int smp_mb__after_clear_bit () ;
 int test_and_clear_bit (int,unsigned long*) ;
 int wmb () ;

__attribute__((used)) static inline int bnx2x_func_state_change_comp(struct bnx2x *bp,
            struct bnx2x_func_sp_obj *o,
            enum bnx2x_func_cmd cmd)
{
 unsigned long cur_pending = o->pending;

 if (!test_and_clear_bit(cmd, &cur_pending)) {
  BNX2X_ERR("Bad MC reply %d for func %d in state %d pending 0x%lx, next_state %d\n",
     cmd, BP_FUNC(bp), o->state,
     cur_pending, o->next_state);
  return -EINVAL;
 }

 DP(BNX2X_MSG_SP,
    "Completing command %d for func %d, setting state to %d\n",
    cmd, BP_FUNC(bp), o->next_state);

 o->state = o->next_state;
 o->next_state = BNX2X_F_STATE_MAX;




 wmb();

 clear_bit(cmd, &o->pending);
 smp_mb__after_clear_bit();

 return 0;
}
