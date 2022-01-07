
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int stats_timer; int bna_lock; int run_flags; } ;


 int BNAD_RF_STATS_TIMER_RUNNING ;
 int del_timer_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
bnad_stats_timer_stop(struct bnad *bnad)
{
 int to_del = 0;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (test_and_clear_bit(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags))
  to_del = 1;
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 if (to_del)
  del_timer_sync(&bnad->stats_timer);
}
