
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnad {int cfg_flags; int bna_lock; TYPE_2__* pcidev; TYPE_1__* msix_table; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int BNAD_CF_MSIX ;
 size_t BNAD_MAILBOX_MSIX_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void
bnad_mbox_irq_sync(struct bnad *bnad)
{
 u32 irq;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (bnad->cfg_flags & BNAD_CF_MSIX)
  irq = bnad->msix_table[BNAD_MAILBOX_MSIX_INDEX].vector;
 else
  irq = bnad->pcidev->irq;
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 synchronize_irq(irq);
}
