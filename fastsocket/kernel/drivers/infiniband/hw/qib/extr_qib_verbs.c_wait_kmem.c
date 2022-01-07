
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_qp {size_t state; int s_lock; int s_flags; int iowait; } ;
struct qib_ibdev {int pending_lock; int memwait; int mem_timer; } ;


 int EBUSY ;
 int QIB_PROCESS_RECV_OK ;
 int QIB_S_BUSY ;
 int QIB_S_WAIT_KMEM ;
 int* ib_qib_state_ops ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wait_kmem(struct qib_ibdev *dev, struct qib_qp *qp)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&qp->s_lock, flags);
 if (ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK) {
  spin_lock(&dev->pending_lock);
  if (list_empty(&qp->iowait)) {
   if (list_empty(&dev->memwait))
    mod_timer(&dev->mem_timer, jiffies + 1);
   qp->s_flags |= QIB_S_WAIT_KMEM;
   list_add_tail(&qp->iowait, &dev->memwait);
  }
  spin_unlock(&dev->pending_lock);
  qp->s_flags &= ~QIB_S_BUSY;
  ret = -EBUSY;
 }
 spin_unlock_irqrestore(&qp->s_lock, flags);

 return ret;
}
