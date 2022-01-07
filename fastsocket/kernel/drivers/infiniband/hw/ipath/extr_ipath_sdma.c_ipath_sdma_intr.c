
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_sdma_lock; } ;


 int ipath_sdma_make_progress (struct ipath_devdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipath_sdma_intr(struct ipath_devdata *dd)
{
 unsigned long flags;

 spin_lock_irqsave(&dd->ipath_sdma_lock, flags);

 (void) ipath_sdma_make_progress(dd);

 spin_unlock_irqrestore(&dd->ipath_sdma_lock, flags);
}
