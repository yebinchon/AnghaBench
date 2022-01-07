
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_context {int dummy; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {struct cfq_queue** cfqq; int ioc; struct cfq_data* key; } ;
struct cfq_data {TYPE_1__* queue; } ;
struct TYPE_2__ {int queue_lock; } ;


 size_t BLK_RW_ASYNC ;
 size_t BLK_RW_SYNC ;
 int GFP_ATOMIC ;
 struct cfq_queue* cfq_get_queue (struct cfq_data*,size_t,int ,int ) ;
 int cfq_mark_cfqq_prio_changed (struct cfq_queue*) ;
 int cfq_put_queue (struct cfq_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void changed_ioprio(struct io_context *ioc, struct cfq_io_context *cic)
{
 struct cfq_data *cfqd = cic->key;
 struct cfq_queue *cfqq;
 unsigned long flags;

 if (unlikely(!cfqd))
  return;

 spin_lock_irqsave(cfqd->queue->queue_lock, flags);

 cfqq = cic->cfqq[BLK_RW_ASYNC];
 if (cfqq) {
  struct cfq_queue *new_cfqq;
  new_cfqq = cfq_get_queue(cfqd, BLK_RW_ASYNC, cic->ioc,
      GFP_ATOMIC);
  if (new_cfqq) {
   cic->cfqq[BLK_RW_ASYNC] = new_cfqq;
   cfq_put_queue(cfqq);
  }
 }

 cfqq = cic->cfqq[BLK_RW_SYNC];
 if (cfqq)
  cfq_mark_cfqq_prio_changed(cfqq);

 spin_unlock_irqrestore(cfqd->queue->queue_lock, flags);
}
