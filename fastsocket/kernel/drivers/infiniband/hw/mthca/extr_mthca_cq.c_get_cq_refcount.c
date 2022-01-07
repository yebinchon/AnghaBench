
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mthca_dev {TYPE_1__ cq_table; } ;
struct mthca_cq {int refcount; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline int get_cq_refcount(struct mthca_dev *dev, struct mthca_cq *cq)
{
 int c;

 spin_lock_irq(&dev->cq_table.lock);
 c = cq->refcount;
 spin_unlock_irq(&dev->cq_table.lock);

 return c;
}
