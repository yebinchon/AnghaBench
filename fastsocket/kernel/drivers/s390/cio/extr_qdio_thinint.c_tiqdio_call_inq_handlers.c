
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* queue_start_poll ) (int ,int ,int ) ;int queue_irq_state; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
struct qdio_q {int tasklet; TYPE_3__* irq_ptr; int nr; TYPE_2__ u; } ;
struct qdio_irq {int nr_input_qs; struct qdio_q** input_qs; } ;
struct TYPE_6__ {int dsci; int int_parm; int cdev; } ;


 int QDIO_QUEUE_IRQS_DISABLED ;
 scalar_t__ has_multiple_inq_on_dsci (struct qdio_irq*) ;
 int int_discarded ;
 int qperf_inc (struct qdio_q*,int ) ;
 int references_shared_dsci (struct qdio_irq*) ;
 int shared_ind (struct qdio_q*) ;
 int stub1 (int ,int ,int ) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int xchg (int ,int ) ;

__attribute__((used)) static inline void tiqdio_call_inq_handlers(struct qdio_irq *irq)
{
 int i;
 struct qdio_q *q;

 for (i = 0; i < irq->nr_input_qs; ++i) {
  q = irq->input_qs[i];

  if (!references_shared_dsci(irq) &&
      has_multiple_inq_on_dsci(irq))
   xchg(q->irq_ptr->dsci, 0);

  if (q->u.in.queue_start_poll) {

   if (test_and_set_bit(QDIO_QUEUE_IRQS_DISABLED,
          &q->u.in.queue_irq_state)) {
    qperf_inc(q, int_discarded);
    continue;
   }


   q->u.in.queue_start_poll(q->irq_ptr->cdev, q->nr,
       q->irq_ptr->int_parm);
  } else {
   if (!shared_ind(q))
    xchg(q->irq_ptr->dsci, 0);





   tasklet_schedule(&q->tasklet);
  }
 }
}
