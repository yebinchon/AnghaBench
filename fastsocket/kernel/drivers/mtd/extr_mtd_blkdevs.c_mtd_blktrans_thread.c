
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request {TYPE_2__* rq_disk; } ;
struct mtd_blktrans_ops {TYPE_1__* blkcore_priv; } ;
struct mtd_blktrans_dev {int lock; struct mtd_blktrans_ops* tr; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {struct mtd_blktrans_dev* private_data; } ;
struct TYPE_4__ {struct request_queue* rq; } ;


 int EIO ;
 int PF_MEMALLOC ;
 int TASK_INTERRUPTIBLE ;
 int __blk_end_request_all (struct request*,int ) ;
 int __blk_end_request_cur (struct request*,int) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 TYPE_3__* current ;
 int do_blktrans_request (struct mtd_blktrans_ops*,struct mtd_blktrans_dev*,struct request*) ;
 int kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int mtd_blktrans_thread(void *arg)
{
 struct mtd_blktrans_ops *tr = arg;
 struct request_queue *rq = tr->blkcore_priv->rq;
 struct request *req = ((void*)0);


 current->flags |= PF_MEMALLOC;

 spin_lock_irq(rq->queue_lock);

 while (!kthread_should_stop()) {
  struct mtd_blktrans_dev *dev;
  int res;

  if (!req && !(req = blk_fetch_request(rq))) {
   set_current_state(TASK_INTERRUPTIBLE);
   spin_unlock_irq(rq->queue_lock);
   schedule();
   spin_lock_irq(rq->queue_lock);
   continue;
  }

  dev = req->rq_disk->private_data;
  tr = dev->tr;

  spin_unlock_irq(rq->queue_lock);

  mutex_lock(&dev->lock);
  res = do_blktrans_request(tr, dev, req);
  mutex_unlock(&dev->lock);

  spin_lock_irq(rq->queue_lock);

  if (!__blk_end_request_cur(req, res))
   req = ((void*)0);
 }

 if (req)
  __blk_end_request_all(req, -EIO);

 spin_unlock_irq(rq->queue_lock);

 return 0;
}
