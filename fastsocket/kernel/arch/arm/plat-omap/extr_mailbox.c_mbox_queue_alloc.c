
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct omap_mbox* queuedata; } ;
struct omap_mbox_queue {int work; struct request_queue* queue; int lock; } ;
struct omap_mbox {int dummy; } ;
typedef int request_fn_proc ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 struct request_queue* blk_init_queue (int *,int *) ;
 int kfree (struct omap_mbox_queue*) ;
 struct omap_mbox_queue* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct omap_mbox_queue *mbox_queue_alloc(struct omap_mbox *mbox,
     request_fn_proc * proc,
     void (*work) (struct work_struct *))
{
 struct request_queue *q;
 struct omap_mbox_queue *mq;

 mq = kzalloc(sizeof(struct omap_mbox_queue), GFP_KERNEL);
 if (!mq)
  return ((void*)0);

 spin_lock_init(&mq->lock);

 q = blk_init_queue(proc, &mq->lock);
 if (!q)
  goto error;
 q->queuedata = mbox;
 mq->queue = q;

 INIT_WORK(&mq->work, work);

 return mq;
error:
 kfree(mq);
 return ((void*)0);
}
