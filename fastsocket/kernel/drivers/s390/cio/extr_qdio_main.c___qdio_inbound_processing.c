
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int qdio_inbound_q_done (struct qdio_q*) ;
 int qdio_inbound_q_moved (struct qdio_q*) ;
 int qdio_kick_handler (struct qdio_q*) ;
 int qdio_stop_polling (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 int tasklet_inbound ;
 int tasklet_inbound_resched ;
 int tasklet_inbound_resched2 ;

__attribute__((used)) static void __qdio_inbound_processing(struct qdio_q *q)
{
 qperf_inc(q, tasklet_inbound);
again:
 if (!qdio_inbound_q_moved(q))
  return;

 qdio_kick_handler(q);

 if (!qdio_inbound_q_done(q)) {

  qperf_inc(q, tasklet_inbound_resched);
  goto again;
 }

 qdio_stop_polling(q);




 if (!qdio_inbound_q_done(q)) {
  qperf_inc(q, tasklet_inbound_resched2);
  goto again;
 }
}
