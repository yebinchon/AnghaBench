
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int wqe_shift; } ;
struct TYPE_5__ {void* buf; } ;
struct TYPE_7__ {TYPE_2__* page_list; TYPE_1__ direct; } ;
struct mthca_qp {TYPE_4__ rq; TYPE_3__ queue; scalar_t__ is_direct; } ;
struct TYPE_6__ {void* buf; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static void *get_recv_wqe(struct mthca_qp *qp, int n)
{
 if (qp->is_direct)
  return qp->queue.direct.buf + (n << qp->rq.wqe_shift);
 else
  return qp->queue.page_list[(n << qp->rq.wqe_shift) >> PAGE_SHIFT].buf +
   ((n << qp->rq.wqe_shift) & (PAGE_SIZE - 1));
}
