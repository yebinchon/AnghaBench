
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int lock; scalar_t__ cmd_pool_bits; struct CommandList* cmd_pool; } ;
struct CommandList {int dummy; } ;


 int BITS_PER_LONG ;
 int clear_bit (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cmd_free(struct ctlr_info *h, struct CommandList *c)
{
 int i;
 unsigned long flags;

 i = c - h->cmd_pool;
 spin_lock_irqsave(&h->lock, flags);
 clear_bit(i & (BITS_PER_LONG - 1),
    h->cmd_pool_bits + (i / BITS_PER_LONG));
 spin_unlock_irqrestore(&h->lock, flags);
}
