
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {unsigned long thread_start_mask; unsigned long thread_allowed_mask; unsigned long thread_running_mask; int mask_lock; } ;


 int EPERM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int
__lcs_do_run_thread(struct lcs_card *card, unsigned long thread)
{
        unsigned long flags;
        int rc = 0;

 spin_lock_irqsave(&card->mask_lock, flags);
        if (card->thread_start_mask & thread){
                if ((card->thread_allowed_mask & thread) &&
                    !(card->thread_running_mask & thread)){
                        rc = 1;
                        card->thread_start_mask &= ~thread;
                        card->thread_running_mask |= thread;
                } else
                        rc = -EPERM;
        }
 spin_unlock_irqrestore(&card->mask_lock, flags);
        return rc;
}
