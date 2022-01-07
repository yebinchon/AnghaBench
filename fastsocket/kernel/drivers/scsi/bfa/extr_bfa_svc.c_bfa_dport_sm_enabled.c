
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ scn; } ;
struct bfa_dport_s {int bfa; TYPE_2__ i2hmsg; int dynamic; int test_state; } ;
typedef enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;






 int BFA_DPORT_ST_COMP ;
 int BFA_DPORT_ST_INP ;
 int BFA_DPORT_ST_NO_SFP ;
 int BFA_FALSE ;
 int BFI_DPORT_DISABLE ;
 int BFI_DPORT_DYN_DISABLE ;







 int BFI_DPORT_START ;
 int bfa_dport_send_req (struct bfa_dport_s*,int ) ;
 int bfa_dport_sm_disabled ;
 int bfa_dport_sm_disabling ;
 int bfa_dport_sm_disabling_qwait ;
 int bfa_dport_sm_dynamic_disabling ;
 int bfa_dport_sm_dynamic_disabling_qwait ;
 int bfa_dport_sm_starting ;
 int bfa_dport_sm_starting_qwait ;
 int bfa_fcport_ddportdisable (int ) ;
 int bfa_fcport_dportdisable (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_dport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_dport_sm_enabled(struct bfa_dport_s *dport, enum bfa_dport_sm_event event)
{
 bfa_trc(dport->bfa, event);

 switch (event) {
 case 135:
  if (bfa_dport_send_req(dport, BFI_DPORT_START))
   bfa_sm_set_state(dport, bfa_dport_sm_starting);
  else
   bfa_sm_set_state(dport, bfa_dport_sm_starting_qwait);
  break;

 case 138:
  bfa_fcport_dportdisable(dport->bfa);
  if (bfa_dport_send_req(dport, BFI_DPORT_DISABLE))
   bfa_sm_set_state(dport, bfa_dport_sm_disabling);
  else
   bfa_sm_set_state(dport, bfa_dport_sm_disabling_qwait);
  break;

 case 137:
  bfa_sm_set_state(dport, bfa_dport_sm_disabled);
  break;

 case 136:
  switch (dport->i2hmsg.scn.state) {
  case 130:
   dport->test_state = BFA_DPORT_ST_COMP;
   break;

  case 128:
   dport->test_state = BFA_DPORT_ST_INP;
   break;

  case 129:
  case 131:

   break;

  case 132:
   dport->test_state = BFA_DPORT_ST_NO_SFP;
   break;

  case 134:
   bfa_fcport_ddportdisable(dport->bfa);

   if (bfa_dport_send_req(dport, BFI_DPORT_DYN_DISABLE))
    bfa_sm_set_state(dport,
      bfa_dport_sm_dynamic_disabling);
   else
    bfa_sm_set_state(dport,
      bfa_dport_sm_dynamic_disabling_qwait);
   break;

  case 133:
   bfa_fcport_ddportdisable(dport->bfa);

   bfa_sm_set_state(dport, bfa_dport_sm_disabled);
   dport->dynamic = BFA_FALSE;
   break;

  default:
   bfa_trc(dport->bfa, dport->i2hmsg.scn.state);
   bfa_sm_fault(dport->bfa, event);
  }
  break;
 default:
  bfa_sm_fault(dport->bfa, event);
 }
}
