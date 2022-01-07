
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {unsigned int max_sge; scalar_t__ size; int lock; struct ipath_rwq* wq; } ;
struct ipath_srq {TYPE_1__ rq; } ;
struct ipath_rwqe {int num_sge; int * sg_list; int wr_id; } ;
struct ipath_rwq {scalar_t__ head; scalar_t__ tail; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {int num_sge; int * sg_list; int wr_id; struct ib_recv_wr* next; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ipath_rwqe* get_rwqe_ptr (TYPE_1__*,scalar_t__) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_srq* to_isrq (struct ib_srq*) ;

int ipath_post_srq_receive(struct ib_srq *ibsrq, struct ib_recv_wr *wr,
      struct ib_recv_wr **bad_wr)
{
 struct ipath_srq *srq = to_isrq(ibsrq);
 struct ipath_rwq *wq;
 unsigned long flags;
 int ret;

 for (; wr; wr = wr->next) {
  struct ipath_rwqe *wqe;
  u32 next;
  int i;

  if ((unsigned) wr->num_sge > srq->rq.max_sge) {
   *bad_wr = wr;
   ret = -EINVAL;
   goto bail;
  }

  spin_lock_irqsave(&srq->rq.lock, flags);
  wq = srq->rq.wq;
  next = wq->head + 1;
  if (next >= srq->rq.size)
   next = 0;
  if (next == wq->tail) {
   spin_unlock_irqrestore(&srq->rq.lock, flags);
   *bad_wr = wr;
   ret = -ENOMEM;
   goto bail;
  }

  wqe = get_rwqe_ptr(&srq->rq, wq->head);
  wqe->wr_id = wr->wr_id;
  wqe->num_sge = wr->num_sge;
  for (i = 0; i < wr->num_sge; i++)
   wqe->sg_list[i] = wr->sg_list[i];

  smp_wmb();
  wq->head = next;
  spin_unlock_irqrestore(&srq->rq.lock, flags);
 }
 ret = 0;

bail:
 return ret;
}
