
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int comp; int bfad_lock; int bfad_flags; int bfa; } ;


 int BFAD_E_EXIT_COMP ;
 int BFAD_HAL_START_DONE ;
 int bfa_iocfc_stop (int *) ;
 int bfa_sm_send_event (struct bfad_s*,int ) ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

void
bfad_stop(struct bfad_s *bfad)
{
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 init_completion(&bfad->comp);
 bfa_iocfc_stop(&bfad->bfa);
 bfad->bfad_flags &= ~BFAD_HAL_START_DONE;
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 wait_for_completion(&bfad->comp);

 bfa_sm_send_event(bfad, BFAD_E_EXIT_COMP);
}
