
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int * bfad_tsk; } ;
typedef enum bfad_sm_event { ____Placeholder_bfad_sm_event } bfad_sm_event ;





 int BFA_STATUS_OK ;
 int bfa_sm_fault (struct bfad_s*,int) ;
 int bfa_sm_set_state (struct bfad_s*,int ) ;
 int bfa_trc (struct bfad_s*,int) ;
 int bfad_sm_failed ;
 int bfad_sm_operational ;
 int bfad_sm_uninit ;
 int bfad_start_ops (struct bfad_s*) ;
 int kthread_stop (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bfad_sm_initializing(struct bfad_s *bfad, enum bfad_sm_event event)
{
 int retval;
 unsigned long flags;

 bfa_trc(bfad, event);

 switch (event) {
 case 129:
  kthread_stop(bfad->bfad_tsk);
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfad->bfad_tsk = ((void*)0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);

  retval = bfad_start_ops(bfad);
  if (retval != BFA_STATUS_OK)
   break;
  bfa_sm_set_state(bfad, bfad_sm_operational);
  break;

 case 128:
  bfa_sm_set_state(bfad, bfad_sm_uninit);
  kthread_stop(bfad->bfad_tsk);
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfad->bfad_tsk = ((void*)0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  break;

 case 130:
  bfa_sm_set_state(bfad, bfad_sm_failed);
  break;
 default:
  bfa_sm_fault(bfad, event);
 }
}
