
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int trcmod; } ;
struct bfa_pcidev_s {int dummy; } ;
struct bfa_iocfc_cfg_s {int dummy; } ;
struct bfa_dport_s {int result; int test_state; int * cbarg; int * cbfn; int reqq_wait; struct bfa_s* bfa; } ;
struct bfa_fcdiag_s {int trcmod; struct bfa_s* bfa; struct bfa_dport_s dport; } ;
struct bfa_diag_dport_result_s {int dummy; } ;


 int BFA_DPORT_ST_DISABLED ;
 struct bfa_fcdiag_s* BFA_FCDIAG_MOD (struct bfa_s*) ;
 int bfa_dport_qresume ;
 int bfa_dport_sm_disabled ;
 int bfa_reqq_winit (int *,int ,struct bfa_dport_s*) ;
 int bfa_sm_set_state (struct bfa_dport_s*,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
bfa_fcdiag_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
  struct bfa_pcidev_s *pcidev)
{
 struct bfa_fcdiag_s *fcdiag = BFA_FCDIAG_MOD(bfa);
 struct bfa_dport_s *dport = &fcdiag->dport;

 fcdiag->bfa = bfa;
 fcdiag->trcmod = bfa->trcmod;

 dport->bfa = bfa;
 bfa_sm_set_state(dport, bfa_dport_sm_disabled);
 bfa_reqq_winit(&dport->reqq_wait, bfa_dport_qresume, dport);
 dport->cbfn = ((void*)0);
 dport->cbarg = ((void*)0);
 dport->test_state = BFA_DPORT_ST_DISABLED;
 memset(&dport->result, 0, sizeof(struct bfa_diag_dport_result_s));
}
