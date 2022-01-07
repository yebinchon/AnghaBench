
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int tasklet; TYPE_1__* irq_ptr; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ QDIO_IRQ_STATE_STOPPED ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

void qdio_outbound_timer(unsigned long data)
{
 struct qdio_q *q = (struct qdio_q *)data;

 if (unlikely(q->irq_ptr->state == QDIO_IRQ_STATE_STOPPED))
  return;
 tasklet_schedule(&q->tasklet);
}
