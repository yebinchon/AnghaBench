
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_qp {size_t state; int s_lock; int piowait; int s_flags; } ;
struct ipath_ibdev {int dd; int pending_lock; int piowait; int n_piowait; } ;


 int IPATH_PROCESS_SEND_OK ;
 int IPATH_S_BUSY ;
 int IPATH_S_WAITING ;
 int* ib_ipath_state_ops ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int want_buffer (int ,struct ipath_qp*) ;

__attribute__((used)) static int ipath_no_bufs_available(struct ipath_qp *qp,
        struct ipath_ibdev *dev)
{
 unsigned long flags;
 int ret = 1;







 spin_lock_irqsave(&qp->s_lock, flags);
 if (ib_ipath_state_ops[qp->state] & IPATH_PROCESS_SEND_OK) {
  dev->n_piowait++;
  qp->s_flags |= IPATH_S_WAITING;
  qp->s_flags &= ~IPATH_S_BUSY;
  spin_lock(&dev->pending_lock);
  if (list_empty(&qp->piowait))
   list_add_tail(&qp->piowait, &dev->piowait);
  spin_unlock(&dev->pending_lock);
 } else
  ret = 0;
 spin_unlock_irqrestore(&qp->s_lock, flags);
 if (ret)
  want_buffer(dev->dd, qp);
 return ret;
}
