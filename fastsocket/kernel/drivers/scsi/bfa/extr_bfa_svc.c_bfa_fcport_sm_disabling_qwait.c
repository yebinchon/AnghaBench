
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int bfa; int reqq_wait; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
 int BFA_PORT_AEN_DISCONNECT ;
 int bfa_fcport_aen_post (struct bfa_fcport_s*,int ) ;
 int bfa_fcport_reset_linkinfo (struct bfa_fcport_s*) ;
 int bfa_fcport_send_disable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_disabling ;
 int bfa_fcport_sm_faa_misconfig ;
 int bfa_fcport_sm_iocfail ;
 int bfa_fcport_sm_stopped ;
 int bfa_fcport_sm_toggling_qwait ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcport_sm_disabling_qwait(struct bfa_fcport_s *fcport,
     enum bfa_fcport_sm_event event)
{
 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(fcport, bfa_fcport_sm_disabling);
  bfa_fcport_send_disable(fcport);
  break;

 case 128:
  bfa_sm_set_state(fcport, bfa_fcport_sm_stopped);
  bfa_reqq_wcancel(&fcport->reqq_wait);
  break;

 case 134:
  bfa_sm_set_state(fcport, bfa_fcport_sm_toggling_qwait);
  break;

 case 135:



  break;

 case 130:
 case 131:




  break;

 case 132:
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocfail);
  bfa_reqq_wcancel(&fcport->reqq_wait);
  break;

 case 133:
  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISCONNECT);
  bfa_sm_set_state(fcport, bfa_fcport_sm_faa_misconfig);
  break;

 default:
  bfa_sm_fault(fcport->bfa, event);
 }
}
