
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int sdma_lock; } ;


 int __qib_sdma_intr (struct qib_pportdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void qib_sdma_intr(struct qib_pportdata *ppd)
{
 unsigned long flags;

 spin_lock_irqsave(&ppd->sdma_lock, flags);

 __qib_sdma_intr(ppd);

 spin_unlock_irqrestore(&ppd->sdma_lock, flags);
}
