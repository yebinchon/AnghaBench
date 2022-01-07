
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timer; scalar_t__ pci_out_enabled; } ;
struct TYPE_5__ {TYPE_1__ out; } ;
struct qdio_q {int tasklet; TYPE_3__* irq_ptr; TYPE_2__ u; int nr_buf_used; } ;
struct TYPE_6__ {scalar_t__ state; } ;


 int BUG_ON (int) ;
 int HZ ;
 scalar_t__ QDIO_IQDIO_POLL_LVL ;
 scalar_t__ QDIO_IQDIO_QFMT ;
 scalar_t__ QDIO_IRQ_STATE_STOPPED ;
 scalar_t__ QDIO_ZFCP_QFMT ;
 scalar_t__ atomic_read (int *) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pci_out_supported (struct qdio_q*) ;
 int qdio_kick_handler (struct qdio_q*) ;
 scalar_t__ qdio_outbound_q_done (struct qdio_q*) ;
 scalar_t__ qdio_outbound_q_moved (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 scalar_t__ queue_type (struct qdio_q*) ;
 int tasklet_outbound ;
 int tasklet_schedule (int *) ;
 int timer_pending (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __qdio_outbound_processing(struct qdio_q *q)
{
 qperf_inc(q, tasklet_outbound);
 BUG_ON(atomic_read(&q->nr_buf_used) < 0);

 if (qdio_outbound_q_moved(q))
  qdio_kick_handler(q);

 if (queue_type(q) == QDIO_ZFCP_QFMT)
  if (!pci_out_supported(q) && !qdio_outbound_q_done(q))
   goto sched;

 if ((queue_type(q) == QDIO_IQDIO_QFMT) &&
     (atomic_read(&q->nr_buf_used)) > QDIO_IQDIO_POLL_LVL)
  goto sched;

 if (q->u.out.pci_out_enabled)
  return;






 if (qdio_outbound_q_done(q))
  del_timer(&q->u.out.timer);
 else
  if (!timer_pending(&q->u.out.timer))
   mod_timer(&q->u.out.timer, jiffies + 10 * HZ);
 return;

sched:
 if (unlikely(q->irq_ptr->state == QDIO_IRQ_STATE_STOPPED))
  return;
 tasklet_schedule(&q->tasklet);
}
