
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pid; int fcs; } ;
struct bfa_fcs_rpf_s {struct bfa_fcs_rport_s* rport; } ;


 int RPFSM_EVENT_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_fcs_rpf_s*,int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rpf_timeout(void *arg)
{
 struct bfa_fcs_rpf_s *rpf = (struct bfa_fcs_rpf_s *) arg;
 struct bfa_fcs_rport_s *rport = rpf->rport;

 bfa_trc(rport->fcs, rport->pid);
 bfa_sm_send_event(rpf, RPFSM_EVENT_TIMEOUT);
}
