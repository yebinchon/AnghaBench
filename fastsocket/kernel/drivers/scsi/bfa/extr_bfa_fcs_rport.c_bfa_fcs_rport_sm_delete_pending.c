
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;






 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_delete_pending(struct bfa_fcs_rport_s *rport,
    enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 130:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcs_rport_free(rport);
  break;

 case 131:
 case 129:
 case 128:

  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
