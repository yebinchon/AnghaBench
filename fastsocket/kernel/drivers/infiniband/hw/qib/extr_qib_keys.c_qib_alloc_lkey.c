
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qib_mregion {int lkey_published; size_t lkey; TYPE_1__* pd; } ;
struct qib_lkey_table {size_t next; int max; int gen; int lock; int ** table; } ;
struct qib_ibdev {int * dma_mr; struct qib_lkey_table lk_table; } ;
struct TYPE_2__ {int device; } ;


 int ENOMEM ;
 int ib_qib_lkey_table_size ;
 int qib_get_mr (struct qib_mregion*) ;
 int rcu_assign_pointer (int *,struct qib_mregion*) ;
 struct qib_mregion* rcu_dereference (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qib_ibdev* to_idev (int ) ;

int qib_alloc_lkey(struct qib_mregion *mr, int dma_region)
{
 unsigned long flags;
 u32 r;
 u32 n;
 int ret = 0;
 struct qib_ibdev *dev = to_idev(mr->pd->device);
 struct qib_lkey_table *rkt = &dev->lk_table;

 spin_lock_irqsave(&rkt->lock, flags);


 if (dma_region) {
  struct qib_mregion *tmr;

  tmr = rcu_dereference(dev->dma_mr);
  if (!tmr) {
   qib_get_mr(mr);
   rcu_assign_pointer(dev->dma_mr, mr);
   mr->lkey_published = 1;
  }
  goto success;
 }


 r = rkt->next;
 n = r;
 for (;;) {
  if (rkt->table[r] == ((void*)0))
   break;
  r = (r + 1) & (rkt->max - 1);
  if (r == n)
   goto bail;
 }
 rkt->next = (r + 1) & (rkt->max - 1);




 rkt->gen++;
 mr->lkey = (r << (32 - ib_qib_lkey_table_size)) |
  ((((1 << (24 - ib_qib_lkey_table_size)) - 1) & rkt->gen)
   << 8);
 if (mr->lkey == 0) {
  mr->lkey |= 1 << 8;
  rkt->gen++;
 }
 qib_get_mr(mr);
 rcu_assign_pointer(rkt->table[r], mr);
 mr->lkey_published = 1;
success:
 spin_unlock_irqrestore(&rkt->lock, flags);
out:
 return ret;
bail:
 spin_unlock_irqrestore(&rkt->lock, flags);
 ret = -ENOMEM;
 goto out;
}
