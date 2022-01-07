
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {int timer_mod; } ;
struct bfad_s {int hal_tmo; int bfad_lock; TYPE_1__ bfa; } ;


 int BFA_TIMER_FREQ ;
 int bfa_comp_deq (TYPE_1__*,struct list_head*) ;
 int bfa_comp_free (TYPE_1__*,struct list_head*) ;
 int bfa_comp_process (TYPE_1__*,struct list_head*) ;
 int bfa_timer_beat (int *) ;
 scalar_t__ jiffies ;
 int list_empty (struct list_head*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
bfad_bfa_tmo(unsigned long data)
{
 struct bfad_s *bfad = (struct bfad_s *) data;
 unsigned long flags;
 struct list_head doneq;

 spin_lock_irqsave(&bfad->bfad_lock, flags);

 bfa_timer_beat(&bfad->bfa.timer_mod);

 bfa_comp_deq(&bfad->bfa, &doneq);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (!list_empty(&doneq)) {
  bfa_comp_process(&bfad->bfa, &doneq);
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfa_comp_free(&bfad->bfa, &doneq);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 }

 mod_timer(&bfad->hal_tmo,
    jiffies + msecs_to_jiffies(BFA_TIMER_FREQ));
}
