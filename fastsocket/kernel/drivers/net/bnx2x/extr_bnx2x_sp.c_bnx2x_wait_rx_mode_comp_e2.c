
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_rx_mode_ramrod_params {int pstate; int state; } ;
struct bnx2x {int dummy; } ;


 int bnx2x_state_wait (struct bnx2x*,int ,int ) ;

__attribute__((used)) static int bnx2x_wait_rx_mode_comp_e2(struct bnx2x *bp,
          struct bnx2x_rx_mode_ramrod_params *p)
{
 return bnx2x_state_wait(bp, p->state, p->pstate);
}
