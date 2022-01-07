
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdoops_context {scalar_t__ writecount; int work_write; int writecount_lock; scalar_t__ ready; struct mtd_info* mtd; } ;
struct mtd_info {scalar_t__ panic_write; } ;


 scalar_t__ in_interrupt () ;
 int mtdoops_write (struct mtdoops_context*,int) ;
 struct mtdoops_context oops_cxt ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mtdoops_console_sync(void)
{
 struct mtdoops_context *cxt = &oops_cxt;
 struct mtd_info *mtd = cxt->mtd;
 unsigned long flags;

 if (!cxt->ready || !mtd || cxt->writecount == 0)
  return;





 spin_lock_irqsave(&cxt->writecount_lock, flags);
 if (!cxt->ready) {
  spin_unlock_irqrestore(&cxt->writecount_lock, flags);
  return;
 }
 cxt->ready = 0;
 spin_unlock_irqrestore(&cxt->writecount_lock, flags);

 if (mtd->panic_write && in_interrupt())

  mtdoops_write(cxt, 1);
 else
  schedule_work(&cxt->work_write);
}
