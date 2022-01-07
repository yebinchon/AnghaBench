
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int bfa; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;




 int bfa_fcport_sm_disabled ;
 int bfa_fcport_sm_iocdown ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcport_sm_iocfail(struct bfa_fcport_s *fcport,
    enum bfa_fcport_sm_event event)
{
 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(fcport, bfa_fcport_sm_disabled);
  break;

 case 129:
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocdown);
  break;

 default:



  ;
 }
}
