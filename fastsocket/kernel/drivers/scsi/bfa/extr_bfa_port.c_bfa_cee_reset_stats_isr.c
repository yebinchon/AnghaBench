
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_stats_cbarg; int (* reset_stats_cbfn ) (int ,int ) ;} ;
struct bfa_cee_s {TYPE_1__ cbfn; int reset_stats_pending; int reset_stats_status; } ;
typedef int bfa_status_t ;


 int BFA_FALSE ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_cee_reset_stats_isr(struct bfa_cee_s *cee, bfa_status_t status)
{
 cee->reset_stats_status = status;
 cee->reset_stats_pending = BFA_FALSE;
 if (cee->cbfn.reset_stats_cbfn)
  cee->cbfn.reset_stats_cbfn(cee->cbfn.reset_stats_cbarg, status);
}
