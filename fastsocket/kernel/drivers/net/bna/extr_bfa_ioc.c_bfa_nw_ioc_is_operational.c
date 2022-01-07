
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;


 int bfa_fsm_cmp_state (struct bfa_ioc*,int ) ;
 int bfa_ioc_sm_op ;

bool
bfa_nw_ioc_is_operational(struct bfa_ioc *ioc)
{
 return bfa_fsm_cmp_state(ioc, bfa_ioc_sm_op);
}
