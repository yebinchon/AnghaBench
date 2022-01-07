
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_flags; int hal_tmo; } ;
typedef enum bfad_sm_event { ____Placeholder_bfad_sm_event } bfad_sm_event ;


 int BFAD_CFG_PPORT_DONE ;



 int BFAD_FC4_PROBE_DONE ;
 int BFA_STATUS_OK ;
 int bfa_sm_fault (struct bfad_s*,int) ;
 int bfa_sm_set_state (struct bfad_s*,int ) ;
 int bfa_trc (struct bfad_s*,int) ;
 int bfad_im_probe_undo (struct bfad_s*) ;
 int bfad_remove_intr (struct bfad_s*) ;
 int bfad_sm_operational ;
 int bfad_sm_uninit ;
 int bfad_start_ops (struct bfad_s*) ;
 int bfad_stop (struct bfad_s*) ;
 int bfad_uncfg_pport (struct bfad_s*) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void
bfad_sm_failed(struct bfad_s *bfad, enum bfad_sm_event event)
{
 int retval;

 bfa_trc(bfad, event);

 switch (event) {
 case 129:
  retval = bfad_start_ops(bfad);
  if (retval != BFA_STATUS_OK)
   break;
  bfa_sm_set_state(bfad, bfad_sm_operational);
  break;

 case 128:
  if (bfad->bfad_flags & BFAD_CFG_PPORT_DONE)
   bfad_uncfg_pport(bfad);
  if (bfad->bfad_flags & BFAD_FC4_PROBE_DONE) {
   bfad_im_probe_undo(bfad);
   bfad->bfad_flags &= ~BFAD_FC4_PROBE_DONE;
  }
  bfad_stop(bfad);
  break;

 case 130:
  bfa_sm_set_state(bfad, bfad_sm_uninit);
  bfad_remove_intr(bfad);
  del_timer_sync(&bfad->hal_tmo);
  break;

 default:
  bfa_sm_fault(bfad, event);
 }
}
