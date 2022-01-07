
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_dconf_mod_s {TYPE_1__* bfa; int timer; } ;
typedef enum bfa_dconf_event { ____Placeholder_bfa_dconf_event } bfa_dconf_event ;
struct TYPE_3__ {int iocfc; } ;





 int IOCFC_E_DCONF_DONE ;
 int bfa_dconf_sm_uninit ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_dconf_mod_s*,int ) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_dconf_sm_final_sync(struct bfa_dconf_mod_s *dconf,
   enum bfa_dconf_event event)
{
 bfa_trc(dconf->bfa, event);

 switch (event) {
 case 129:
 case 130:
  bfa_timer_stop(&dconf->timer);
 case 128:
  bfa_sm_set_state(dconf, bfa_dconf_sm_uninit);
  bfa_fsm_send_event(&dconf->bfa->iocfc, IOCFC_E_DCONF_DONE);
  break;
 default:
  bfa_sm_fault(dconf->bfa, event);
 }
}
