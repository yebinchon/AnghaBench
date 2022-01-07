
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ rsp; } ;
struct bfa_dport_s {int bfa; int test_state; TYPE_2__ i2hmsg; int result; } ;
struct bfa_diag_dport_result_s {int dummy; } ;
typedef enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;


 int BFA_DPORT_OPMODE_AUTO ;



 int BFA_DPORT_ST_DISABLED ;
 int BFA_DPORT_ST_INP ;
 int BFA_DPORT_ST_NO_SFP ;
 int BFA_STATUS_DPORT_INV_SFP ;
 int BFA_STATUS_FAILED ;
 int bfa_cb_fcdiag_dport (struct bfa_dport_s*,int ) ;
 int bfa_dport_result_start (struct bfa_dport_s*,int ) ;
 int bfa_dport_sm_disabled ;
 int bfa_dport_sm_enabled ;
 int bfa_fcport_dportdisable (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_dport_s*,int ) ;
 int bfa_trc (int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
bfa_dport_sm_enabling(struct bfa_dport_s *dport, enum bfa_dport_sm_event event)
{
 bfa_trc(dport->bfa, event);

 switch (event) {
 case 130:
  memset(&dport->result, 0,
    sizeof(struct bfa_diag_dport_result_s));
  if (dport->i2hmsg.rsp.status == BFA_STATUS_DPORT_INV_SFP) {
   dport->test_state = BFA_DPORT_ST_NO_SFP;
  } else {
   dport->test_state = BFA_DPORT_ST_INP;
   bfa_dport_result_start(dport, BFA_DPORT_OPMODE_AUTO);
  }
  bfa_sm_set_state(dport, bfa_dport_sm_enabled);
  break;

 case 128:
  dport->test_state = BFA_DPORT_ST_DISABLED;
  bfa_fcport_dportdisable(dport->bfa);
  bfa_sm_set_state(dport, bfa_dport_sm_disabled);
  break;

 case 129:
  bfa_sm_set_state(dport, bfa_dport_sm_disabled);
  bfa_cb_fcdiag_dport(dport, BFA_STATUS_FAILED);
  break;

 default:
  bfa_sm_fault(dport->bfa, event);
 }
}
