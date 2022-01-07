
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct bfa_dconf_s {int dummy; } ;
struct bfa_dconf_mod_s {int min_cfg; TYPE_1__* bfa; int timer; int dconf; int instance; } ;
typedef enum bfa_dconf_event { ____Placeholder_bfa_dconf_event } bfa_dconf_event ;
typedef int bfa_status_t ;
struct TYPE_8__ {int iocfc; } ;







 int BFA_DCONF_UPDATE_TOV ;
 int BFA_FLASH (TYPE_1__*) ;
 int BFA_FLASH_PART_DRV ;
 int BFA_STATUS_FAILED ;
 int BFA_STATUS_OK ;
 int IOCFC_E_DCONF_DONE ;
 int bfa_dconf_init_cb (TYPE_1__*,int ) ;
 void bfa_dconf_sm_flash_read (struct bfa_dconf_mod_s*,int) ;
 int bfa_dconf_timer ;
 int bfa_flash_read_part (int ,int ,int ,int ,int,int ,int (*) (TYPE_1__*,int ),TYPE_1__*) ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_dconf_mod_s*,void (*) (struct bfa_dconf_mod_s*,int)) ;
 int bfa_timer_start (TYPE_1__*,int *,int ,struct bfa_dconf_mod_s*,int) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_dconf_sm_uninit(struct bfa_dconf_mod_s *dconf, enum bfa_dconf_event event)
{
 bfa_status_t bfa_status;
 bfa_trc(dconf->bfa, event);

 switch (event) {
 case 130:
  if (dconf->min_cfg) {
   bfa_trc(dconf->bfa, dconf->min_cfg);
   bfa_fsm_send_event(&dconf->bfa->iocfc,
     IOCFC_E_DCONF_DONE);
   return;
  }
  bfa_sm_set_state(dconf, bfa_dconf_sm_flash_read);
  bfa_timer_start(dconf->bfa, &dconf->timer,
   bfa_dconf_timer, dconf, 2 * BFA_DCONF_UPDATE_TOV);
  bfa_status = bfa_flash_read_part(BFA_FLASH(dconf->bfa),
     BFA_FLASH_PART_DRV, dconf->instance,
     dconf->dconf,
     sizeof(struct bfa_dconf_s), 0,
     bfa_dconf_init_cb, dconf->bfa);
  if (bfa_status != BFA_STATUS_OK) {
   bfa_timer_stop(&dconf->timer);
   bfa_dconf_init_cb(dconf->bfa, BFA_STATUS_FAILED);
   bfa_sm_set_state(dconf, bfa_dconf_sm_uninit);
   return;
  }
  break;
 case 132:
  bfa_fsm_send_event(&dconf->bfa->iocfc, IOCFC_E_DCONF_DONE);
 case 129:
 case 128:
 case 131:
  break;
 default:
  bfa_sm_fault(dconf->bfa, event);
 }
}
