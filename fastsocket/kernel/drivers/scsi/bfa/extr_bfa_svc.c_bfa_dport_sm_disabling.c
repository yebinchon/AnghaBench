
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dport_s {int bfa; int test_state; } ;
typedef enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;





 int BFA_DPORT_ST_DISABLED ;
 int BFA_STATUS_OK ;
 int bfa_cb_fcdiag_dport (struct bfa_dport_s*,int ) ;
 int bfa_dport_sm_disabled ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_dport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_dport_sm_disabling(struct bfa_dport_s *dport, enum bfa_dport_sm_event event)
{
 bfa_trc(dport->bfa, event);

 switch (event) {
 case 130:
  dport->test_state = BFA_DPORT_ST_DISABLED;
  bfa_sm_set_state(dport, bfa_dport_sm_disabled);
  break;

 case 129:
  bfa_sm_set_state(dport, bfa_dport_sm_disabled);
  bfa_cb_fcdiag_dport(dport, BFA_STATUS_OK);
  break;

 case 128:

  break;

 default:
  bfa_sm_fault(dport->bfa, event);
 }
}
