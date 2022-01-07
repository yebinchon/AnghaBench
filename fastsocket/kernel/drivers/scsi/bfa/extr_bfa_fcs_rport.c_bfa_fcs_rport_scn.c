
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rscns; } ;
struct bfa_fcs_rport_s {TYPE_1__ stats; } ;


 int RPSM_EVENT_FAB_SCN ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;

void
bfa_fcs_rport_scn(struct bfa_fcs_rport_s *rport)
{
 rport->stats.rscns++;
 bfa_sm_send_event(rport, RPSM_EVENT_FAB_SCN);
}
