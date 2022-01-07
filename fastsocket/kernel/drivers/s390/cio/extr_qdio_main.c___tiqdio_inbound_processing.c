
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int tasklet; TYPE_1__* irq_ptr; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ QDIO_IRQ_STATE_STOPPED ;
 scalar_t__ likely (int) ;
 int qdio_check_outbound_after_thinint (struct qdio_q*) ;
 int qdio_inbound_q_done (struct qdio_q*) ;
 int qdio_inbound_q_moved (struct qdio_q*) ;
 int qdio_kick_handler (struct qdio_q*) ;
 int qdio_stop_polling (struct qdio_q*) ;
 int qdio_sync_after_thinint (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 int tasklet_inbound ;
 int tasklet_inbound_resched ;
 int tasklet_inbound_resched2 ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void __tiqdio_inbound_processing(struct qdio_q *q)
{
 qperf_inc(q, tasklet_inbound);
 qdio_sync_after_thinint(q);





 qdio_check_outbound_after_thinint(q);

 if (!qdio_inbound_q_moved(q))
  return;

 qdio_kick_handler(q);

 if (!qdio_inbound_q_done(q)) {
  qperf_inc(q, tasklet_inbound_resched);
  if (likely(q->irq_ptr->state != QDIO_IRQ_STATE_STOPPED)) {
   tasklet_schedule(&q->tasklet);
   return;
  }
 }

 qdio_stop_polling(q);




 if (!qdio_inbound_q_done(q)) {
  qperf_inc(q, tasklet_inbound_resched2);
  if (likely(q->irq_ptr->state != QDIO_IRQ_STATE_STOPPED))
   tasklet_schedule(&q->tasklet);
 }
}
