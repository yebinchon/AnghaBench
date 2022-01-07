
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_mregion {int lkey; scalar_t__ lkey_published; TYPE_1__* pd; } ;
struct qib_lkey_table {int lock; int * table; } ;
struct qib_ibdev {int dma_mr; struct qib_lkey_table lk_table; } ;
struct TYPE_2__ {int device; } ;


 int ib_qib_lkey_table_size ;
 int qib_put_mr (struct qib_mregion*) ;
 int rcu_assign_pointer (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qib_ibdev* to_idev (int ) ;

void qib_free_lkey(struct qib_mregion *mr)
{
 unsigned long flags;
 u32 lkey = mr->lkey;
 u32 r;
 struct qib_ibdev *dev = to_idev(mr->pd->device);
 struct qib_lkey_table *rkt = &dev->lk_table;

 spin_lock_irqsave(&rkt->lock, flags);
 if (!mr->lkey_published)
  goto out;
 if (lkey == 0)
  rcu_assign_pointer(dev->dma_mr, ((void*)0));
 else {
  r = lkey >> (32 - ib_qib_lkey_table_size);
  rcu_assign_pointer(rkt->table[r], ((void*)0));
 }
 qib_put_mr(mr);
 mr->lkey_published = 0;
out:
 spin_unlock_irqrestore(&rkt->lock, flags);
}
