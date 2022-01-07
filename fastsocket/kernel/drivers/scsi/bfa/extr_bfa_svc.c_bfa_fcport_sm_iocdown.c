
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int bfa; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;



 int bfa_fcport_send_enable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_enabling ;
 int bfa_fcport_sm_enabling_qwait ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcport_sm_iocdown(struct bfa_fcport_s *fcport,
    enum bfa_fcport_sm_event event)
{
 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 128:
  if (bfa_fcport_send_enable(fcport))
   bfa_sm_set_state(fcport, bfa_fcport_sm_enabling);
  else
   bfa_sm_set_state(fcport,
      bfa_fcport_sm_enabling_qwait);
  break;

 default:



  ;
 }
}
