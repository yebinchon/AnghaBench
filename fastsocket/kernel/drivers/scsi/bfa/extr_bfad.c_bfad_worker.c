
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int * bfad_tsk; } ;


 int BFAD_E_INIT_SUCCESS ;
 int bfa_sm_send_event (struct bfad_s*,int ) ;
 int kthread_should_stop () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_worker(void *ptr)
{
 struct bfad_s *bfad;
 unsigned long flags;

 bfad = (struct bfad_s *)ptr;

 while (!kthread_should_stop()) {


  bfa_sm_send_event(bfad, BFAD_E_INIT_SUCCESS);

  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfad->bfad_tsk = ((void*)0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);

  break;
 }

 return 0;
}
