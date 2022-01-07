
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {unsigned long thread_allowed_mask; unsigned long thread_start_mask; int wait_q; int thread_mask_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void qeth_set_allowed_threads(struct qeth_card *card, unsigned long threads,
    int clear_start_mask)
{
 unsigned long flags;

 spin_lock_irqsave(&card->thread_mask_lock, flags);
 card->thread_allowed_mask = threads;
 if (clear_start_mask)
  card->thread_start_mask &= threads;
 spin_unlock_irqrestore(&card->thread_mask_lock, flags);
 wake_up(&card->wait_q);
}
