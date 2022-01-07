
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ldc_channel {scalar_t__ hs_state; int lock; TYPE_1__* mops; } ;
struct TYPE_2__ {int (* read ) (struct ldc_channel*,void*,unsigned int) ;} ;


 int EINVAL ;
 int ENOTCONN ;
 scalar_t__ LDC_HS_COMPLETE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ldc_channel*,void*,unsigned int) ;

int ldc_read(struct ldc_channel *lp, void *buf, unsigned int size)
{
 unsigned long flags;
 int err;

 if (!buf)
  return -EINVAL;

 if (!size)
  return 0;

 spin_lock_irqsave(&lp->lock, flags);

 if (lp->hs_state != LDC_HS_COMPLETE)
  err = -ENOTCONN;
 else
  err = lp->mops->read(lp, buf, size);

 spin_unlock_irqrestore(&lp->lock, flags);

 return err;
}
