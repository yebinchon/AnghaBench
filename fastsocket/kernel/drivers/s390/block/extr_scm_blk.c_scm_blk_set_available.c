
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scm_blk_dev {scalar_t__ state; int lock; TYPE_1__* scmdev; } ;
struct TYPE_2__ {scalar_t__ address; } ;


 scalar_t__ SCM_OPER ;
 scalar_t__ SCM_WR_PROHIBIT ;
 int pr_info (char*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void scm_blk_set_available(struct scm_blk_dev *bdev)
{
 unsigned long flags;

 spin_lock_irqsave(&bdev->lock, flags);
 if (bdev->state == SCM_WR_PROHIBIT)
  pr_info("%lu: Write access to the SCM increment is restored\n",
   (unsigned long) bdev->scmdev->address);
 bdev->state = SCM_OPER;
 spin_unlock_irqrestore(&bdev->lock, flags);
}
