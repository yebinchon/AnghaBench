
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {unsigned long thread_running_mask; int mask_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int
lcs_threads_running(struct lcs_card *card, unsigned long threads)
{
        unsigned long flags;
        int rc = 0;

 spin_lock_irqsave(&card->mask_lock, flags);
        rc = (card->thread_running_mask & threads);
 spin_unlock_irqrestore(&card->mask_lock, flags);
        return rc;
}
