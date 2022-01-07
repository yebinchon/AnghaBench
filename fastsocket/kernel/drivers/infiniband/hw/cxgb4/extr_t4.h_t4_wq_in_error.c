
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_2__* queue; } ;
struct t4_wq {TYPE_3__ rq; } ;
struct TYPE_4__ {int qp_err; } ;
struct TYPE_5__ {TYPE_1__ status; } ;



__attribute__((used)) static inline int t4_wq_in_error(struct t4_wq *wq)
{
 return wq->rq.queue[wq->rq.size].status.qp_err;
}
