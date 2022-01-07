
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {unsigned long thread_running_mask; int thread_mask_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qeth_threads_running(struct qeth_card *card, unsigned long threads)
{
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&card->thread_mask_lock, flags);
 rc = (card->thread_running_mask & threads);
 spin_unlock_irqrestore(&card->thread_mask_lock, flags);
 return rc;
}
