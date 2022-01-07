
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dconf_mod_s {int bfa; int timer; } ;
typedef enum bfa_dconf_event { ____Placeholder_bfa_dconf_event } bfa_dconf_event ;







 int BFA_DCONF_UPDATE_TOV ;
 int bfa_dconf_flash_write (struct bfa_dconf_mod_s*) ;
 int bfa_dconf_sm_final_sync ;
 int bfa_dconf_sm_iocdown_dirty ;
 int bfa_dconf_sm_sync ;
 int bfa_dconf_timer ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_dconf_mod_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_dconf_mod_s*,int ) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_dconf_sm_dirty(struct bfa_dconf_mod_s *dconf, enum bfa_dconf_event event)
{
 bfa_trc(dconf->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(dconf, bfa_dconf_sm_sync);
  bfa_dconf_flash_write(dconf);
  break;
 case 128:
  bfa_timer_stop(&dconf->timer);
  bfa_timer_start(dconf->bfa, &dconf->timer,
   bfa_dconf_timer, dconf, BFA_DCONF_UPDATE_TOV);
  break;
 case 132:
  bfa_timer_stop(&dconf->timer);
  bfa_timer_start(dconf->bfa, &dconf->timer,
   bfa_dconf_timer, dconf, BFA_DCONF_UPDATE_TOV);
  bfa_sm_set_state(dconf, bfa_dconf_sm_final_sync);
  bfa_dconf_flash_write(dconf);
  break;
 case 131:
  break;
 case 130:
  bfa_timer_stop(&dconf->timer);
  bfa_sm_set_state(dconf, bfa_dconf_sm_iocdown_dirty);
  break;
 default:
  bfa_sm_fault(dconf->bfa, event);
 }
}
