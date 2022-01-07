
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct bfad_s {int comp; int bfad_lock; int bfa_fcs; TYPE_1__ pport; } ;


 int BFAD_E_FCS_EXIT_COMP ;
 int BFAD_PORT_DELETE ;
 int bfa_fcs_exit (int *) ;
 int bfa_sm_send_event (struct bfad_s*,int ) ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

void
bfad_fcs_stop(struct bfad_s *bfad)
{
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 init_completion(&bfad->comp);
 bfad->pport.flags |= BFAD_PORT_DELETE;
 bfa_fcs_exit(&bfad->bfa_fcs);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 wait_for_completion(&bfad->comp);

 bfa_sm_send_event(bfad, BFAD_E_FCS_EXIT_COMP);
}
