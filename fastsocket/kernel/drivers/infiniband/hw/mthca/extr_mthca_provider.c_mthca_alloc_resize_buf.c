
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_dev {int dummy; } ;
struct mthca_cq {int lock; TYPE_1__* resize_buf; } ;
struct TYPE_3__ {int cqe; int state; int buf; } ;


 int CQ_RESIZE_ALLOC ;
 int CQ_RESIZE_READY ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 int mthca_alloc_cq_buf (struct mthca_dev*,int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int mthca_alloc_resize_buf(struct mthca_dev *dev, struct mthca_cq *cq,
      int entries)
{
 int ret;

 spin_lock_irq(&cq->lock);
 if (cq->resize_buf) {
  ret = -EBUSY;
  goto unlock;
 }

 cq->resize_buf = kmalloc(sizeof *cq->resize_buf, GFP_ATOMIC);
 if (!cq->resize_buf) {
  ret = -ENOMEM;
  goto unlock;
 }

 cq->resize_buf->state = CQ_RESIZE_ALLOC;

 ret = 0;

unlock:
 spin_unlock_irq(&cq->lock);

 if (ret)
  return ret;

 ret = mthca_alloc_cq_buf(dev, &cq->resize_buf->buf, entries);
 if (ret) {
  spin_lock_irq(&cq->lock);
  kfree(cq->resize_buf);
  cq->resize_buf = ((void*)0);
  spin_unlock_irq(&cq->lock);
  return ret;
 }

 cq->resize_buf->cqe = entries - 1;

 spin_lock_irq(&cq->lock);
 cq->resize_buf->state = CQ_RESIZE_READY;
 spin_unlock_irq(&cq->lock);

 return 0;
}
