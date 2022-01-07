
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int mask; int nr; int * handler; struct qdio_irq* irq_ptr; struct qdio_q* slib; } ;
struct qdio_irq {int dummy; } ;
typedef int qdio_handler_t ;


 int PAGE_SIZE ;
 int memset (struct qdio_q*,int ,int) ;

__attribute__((used)) static void setup_queues_misc(struct qdio_q *q, struct qdio_irq *irq_ptr,
         qdio_handler_t *handler, int i)
{

 memset(q, 0, ((char *)&q->slib) - ((char *)q));
 memset(q->slib, 0, PAGE_SIZE);

 q->irq_ptr = irq_ptr;
 q->mask = 1 << (31 - i);
 q->nr = i;
 q->handler = handler;
}
