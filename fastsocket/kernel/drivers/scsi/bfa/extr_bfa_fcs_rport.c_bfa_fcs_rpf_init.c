
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rpf_s {struct bfa_fcs_rport_s* rport; } ;
struct bfa_fcs_rport_s {int pid; int fcs; struct bfa_fcs_rpf_s rpf; } ;


 int bfa_fcs_rpf_sm_uninit ;
 int bfa_sm_set_state (struct bfa_fcs_rpf_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_rpf_init(struct bfa_fcs_rport_s *rport)
{
 struct bfa_fcs_rpf_s *rpf = &rport->rpf;

 bfa_trc(rport->fcs, rport->pid);
 rpf->rport = rport;

 bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_uninit);
}
