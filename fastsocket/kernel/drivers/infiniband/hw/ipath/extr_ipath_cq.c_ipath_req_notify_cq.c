
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_cq {int notify; int lock; TYPE_1__* queue; } ;
struct ib_cq {int dummy; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_2__ {scalar_t__ head; scalar_t__ tail; } ;


 int IB_CQ_NEXT_COMP ;
 int IB_CQ_REPORT_MISSED_EVENTS ;
 int IB_CQ_SOLICITED_MASK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_cq* to_icq (struct ib_cq*) ;

int ipath_req_notify_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags notify_flags)
{
 struct ipath_cq *cq = to_icq(ibcq);
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&cq->lock, flags);




 if (cq->notify != IB_CQ_NEXT_COMP)
  cq->notify = notify_flags & IB_CQ_SOLICITED_MASK;

 if ((notify_flags & IB_CQ_REPORT_MISSED_EVENTS) &&
     cq->queue->head != cq->queue->tail)
  ret = 1;

 spin_unlock_irqrestore(&cq->lock, flags);

 return ret;
}
