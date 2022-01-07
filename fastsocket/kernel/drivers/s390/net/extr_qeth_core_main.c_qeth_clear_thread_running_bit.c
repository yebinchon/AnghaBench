
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {unsigned long thread_running_mask; int wait_q; int thread_mask_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void qeth_clear_thread_running_bit(struct qeth_card *card, unsigned long thread)
{
 unsigned long flags;

 spin_lock_irqsave(&card->thread_mask_lock, flags);
 card->thread_running_mask &= ~thread;
 spin_unlock_irqrestore(&card->thread_mask_lock, flags);
 wake_up(&card->wait_q);
}
