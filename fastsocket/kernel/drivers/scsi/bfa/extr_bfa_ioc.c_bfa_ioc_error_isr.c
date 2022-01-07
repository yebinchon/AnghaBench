
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hb_count; } ;
struct bfa_ioc_s {int hb_count; TYPE_1__ stats; } ;


 int IOC_E_HWERROR ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_stats (struct bfa_ioc_s*,int ) ;
 int ioc_hbfails ;

void
bfa_ioc_error_isr(struct bfa_ioc_s *ioc)
{
 bfa_ioc_stats(ioc, ioc_hbfails);
 ioc->stats.hb_count = ioc->hb_count;
 bfa_fsm_send_event(ioc, IOC_E_HWERROR);
}
