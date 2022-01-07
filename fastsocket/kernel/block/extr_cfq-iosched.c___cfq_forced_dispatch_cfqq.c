
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {TYPE_1__* cfqd; int fifo; scalar_t__ next_rq; } ;
struct TYPE_2__ {int queue; } ;


 int BUG_ON (int) ;
 int __cfq_slice_expired (TYPE_1__*,struct cfq_queue*,int ) ;
 int cfq_dispatch_insert (int ,scalar_t__) ;
 int list_empty (int *) ;

__attribute__((used)) static int __cfq_forced_dispatch_cfqq(struct cfq_queue *cfqq)
{
 int dispatched = 0;

 while (cfqq->next_rq) {
  cfq_dispatch_insert(cfqq->cfqd->queue, cfqq->next_rq);
  dispatched++;
 }

 BUG_ON(!list_empty(&cfqq->fifo));


 __cfq_slice_expired(cfqq->cfqd, cfqq, 0);
 return dispatched;
}
