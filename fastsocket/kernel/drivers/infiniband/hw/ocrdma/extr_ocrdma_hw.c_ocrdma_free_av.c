
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct ocrdma_dev {TYPE_2__ av_tbl; } ;
struct ocrdma_ah {TYPE_1__* av; } ;
struct TYPE_3__ {scalar_t__ valid; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ocrdma_free_av(struct ocrdma_dev *dev, struct ocrdma_ah *ah)
{
 unsigned long flags;
 spin_lock_irqsave(&dev->av_tbl.lock, flags);
 ah->av->valid = 0;
 spin_unlock_irqrestore(&dev->av_tbl.lock, flags);
 return 0;
}
