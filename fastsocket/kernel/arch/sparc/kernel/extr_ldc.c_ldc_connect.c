
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct ldc_channel {int flags; scalar_t__ hs_state; int lock; TYPE_1__ cfg; } ;


 int EINVAL ;
 int LDC_FLAG_ALLOCED_QUEUES ;
 int LDC_FLAG_REGISTERED_QUEUES ;
 scalar_t__ LDC_HS_OPEN ;
 scalar_t__ LDC_MODE_RAW ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_handshake (struct ldc_channel*) ;

int ldc_connect(struct ldc_channel *lp)
{
 unsigned long flags;
 int err;

 if (lp->cfg.mode == LDC_MODE_RAW)
  return -EINVAL;

 spin_lock_irqsave(&lp->lock, flags);

 if (!(lp->flags & LDC_FLAG_ALLOCED_QUEUES) ||
     !(lp->flags & LDC_FLAG_REGISTERED_QUEUES) ||
     lp->hs_state != LDC_HS_OPEN)
  err = -EINVAL;
 else
  err = start_handshake(lp);

 spin_unlock_irqrestore(&lp->lock, flags);

 return err;
}
