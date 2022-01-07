
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtdoops_context {int writecount; int writecount_lock; int * oops_buf; int nextcount; int ready; struct mtd_info* mtd; } ;
struct mtd_info {int dummy; } ;
struct console {struct mtdoops_context* data; } ;


 int MTDOOPS_KERNMSG_MAGIC ;
 unsigned int OOPS_PAGE_SIZE ;
 int memcpy (int *,char const*,unsigned int) ;
 int mtdoops_console_sync () ;
 int oops_in_progress ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
mtdoops_console_write(struct console *co, const char *s, unsigned int count)
{
 struct mtdoops_context *cxt = co->data;
 struct mtd_info *mtd = cxt->mtd;
 unsigned long flags;

 if (!oops_in_progress) {
  mtdoops_console_sync();
  return;
 }

 if (!cxt->ready || !mtd)
  return;


 spin_lock_irqsave(&cxt->writecount_lock, flags);


 if (!cxt->ready) {
  spin_unlock_irqrestore(&cxt->writecount_lock, flags);
  return;
 }

 if (cxt->writecount == 0) {
  u32 *stamp = cxt->oops_buf;
  *stamp++ = cxt->nextcount;
  *stamp = MTDOOPS_KERNMSG_MAGIC;
  cxt->writecount = 8;
 }

 if ((count + cxt->writecount) > OOPS_PAGE_SIZE)
  count = OOPS_PAGE_SIZE - cxt->writecount;

 memcpy(cxt->oops_buf + cxt->writecount, s, count);
 cxt->writecount += count;

 spin_unlock_irqrestore(&cxt->writecount_lock, flags);

 if (cxt->writecount == OOPS_PAGE_SIZE)
  mtdoops_console_sync();
}
