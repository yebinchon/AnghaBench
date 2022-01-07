
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcport_ln_s {TYPE_1__* fcport; } ;
typedef enum bfa_fcport_ln_sm_event { ____Placeholder_bfa_fcport_ln_sm_event } bfa_fcport_ln_sm_event ;
struct TYPE_2__ {int bfa; } ;



 int BFA_PORT_LINKDOWN ;
 int bfa_fcport_ln_sm_dn_nf ;
 int bfa_fcport_queue_cb (struct bfa_fcport_ln_s*,int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcport_ln_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcport_ln_sm_up(struct bfa_fcport_ln_s *ln,
  enum bfa_fcport_ln_sm_event event)
{
 bfa_trc(ln->fcport->bfa, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(ln, bfa_fcport_ln_sm_dn_nf);
  bfa_fcport_queue_cb(ln, BFA_PORT_LINKDOWN);
  break;

 default:
  bfa_sm_fault(ln->fcport->bfa, event);
 }
}
