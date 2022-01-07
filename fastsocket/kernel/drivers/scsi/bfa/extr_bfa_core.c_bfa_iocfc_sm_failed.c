
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocfc_s {int bfa; } ;
typedef enum iocfc_event { ____Placeholder_iocfc_event } iocfc_event ;






 int bfa_fsm_set_state (struct bfa_iocfc_s*,int ) ;
 int bfa_iocfc_sm_cfg_wait ;
 int bfa_iocfc_sm_dconf_write ;
 int bfa_iocfc_sm_disabling ;
 int bfa_sm_fault (int ,int) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_iocfc_sm_failed(struct bfa_iocfc_s *iocfc, enum iocfc_event event)
{
 bfa_trc(iocfc->bfa, event);

 switch (event) {
 case 128:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_dconf_write);
  break;
 case 131:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_disabling);
  break;
 case 130:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_cfg_wait);
  break;
 case 129:
  break;
 default:
  bfa_sm_fault(iocfc->bfa, event);
  break;
 }
}
