
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int bna_lock; int bna; int run_flags; int netdev; } ;


 int BNAD_RF_STATS_TIMER_RUNNING ;
 int bna_hw_stats_get (int *) ;
 int netif_running (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
bnad_stats_timeout(unsigned long data)
{
 struct bnad *bnad = (struct bnad *)data;
 unsigned long flags;

 if (!netif_running(bnad->netdev) ||
  !test_bit(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags))
  return;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_hw_stats_get(&bnad->bna);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
