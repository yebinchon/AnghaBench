
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int lock; int port; int irq; } ;
typedef TYPE_1__ act2000_card ;


 int ACT2000_FLAGS_IVALID ;
 int ACT2000_FLAGS_PVALID ;
 int ISA_REGION ;
 int free_irq (int ,TYPE_1__*) ;
 int release_region (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
act2000_isa_release(act2000_card * card)
{
        unsigned long flags;

        spin_lock_irqsave(&card->lock, flags);
        if (card->flags & ACT2000_FLAGS_IVALID)
                free_irq(card->irq, card);

        card->flags &= ~ACT2000_FLAGS_IVALID;
        if (card->flags & ACT2000_FLAGS_PVALID)
                release_region(card->port, ISA_REGION);
        card->flags &= ~ACT2000_FLAGS_PVALID;
        spin_unlock_irqrestore(&card->lock, flags);
}
