
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_qp {size_t state; scalar_t__ s_last; scalar_t__ s_head; int s_flags; int wait_dma; int s_lock; int s_dma_busy; } ;


 int IPATH_FLUSH_SEND ;
 int IPATH_S_WAIT_DMA ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int* ib_ipath_state_ops ;
 int ipath_schedule_send (struct ipath_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void decrement_dma_busy(struct ipath_qp *qp)
{
 unsigned long flags;

 if (atomic_dec_and_test(&qp->s_dma_busy)) {
  spin_lock_irqsave(&qp->s_lock, flags);
  if ((ib_ipath_state_ops[qp->state] & IPATH_FLUSH_SEND &&
       qp->s_last != qp->s_head) ||
      (qp->s_flags & IPATH_S_WAIT_DMA))
   ipath_schedule_send(qp);
  spin_unlock_irqrestore(&qp->s_lock, flags);
  wake_up(&qp->wait_dma);
 }
}
