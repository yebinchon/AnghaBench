
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int use_flash_cfg; int bfa; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;


 int BFA_FALSE ;




 int BFA_TRUE ;
 int bfa_fcport_send_enable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_disabled ;
 int bfa_fcport_sm_enabling ;
 int bfa_fcport_sm_enabling_qwait ;
 int bfa_fcport_sm_iocdown ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcport_sm_uninit(struct bfa_fcport_s *fcport,
   enum bfa_fcport_sm_event event)
{
 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 128:



  fcport->use_flash_cfg = BFA_TRUE;

  if (bfa_fcport_send_enable(fcport)) {
   bfa_trc(fcport->bfa, BFA_TRUE);
   bfa_sm_set_state(fcport, bfa_fcport_sm_enabling);
  } else {
   bfa_trc(fcport->bfa, BFA_FALSE);
   bfa_sm_set_state(fcport,
     bfa_fcport_sm_enabling_qwait);
  }
  break;

 case 130:





  break;

 case 131:




  bfa_sm_set_state(fcport, bfa_fcport_sm_disabled);
  break;

 case 129:
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocdown);
  break;

 default:
  bfa_sm_fault(fcport->bfa, event);
 }
}
