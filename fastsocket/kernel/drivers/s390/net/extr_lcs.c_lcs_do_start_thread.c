
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lcs_card {unsigned long thread_start_mask; int mask_lock; scalar_t__ thread_running_mask; scalar_t__ thread_allowed_mask; } ;


 int LCS_DBF_TEXT_ (int,int ,char*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace ;

__attribute__((used)) static int
lcs_do_start_thread(struct lcs_card *card, unsigned long thread)
{
        unsigned long flags;
        int rc = 0;

 spin_lock_irqsave(&card->mask_lock, flags);
        LCS_DBF_TEXT_(4, trace, "  %02x%02x%02x",
                        (u8) card->thread_start_mask,
                        (u8) card->thread_allowed_mask,
                        (u8) card->thread_running_mask);
        rc = (card->thread_start_mask & thread);
 spin_unlock_irqrestore(&card->mask_lock, flags);
        return rc;
}
