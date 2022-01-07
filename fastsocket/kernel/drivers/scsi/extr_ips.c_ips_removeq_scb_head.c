
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* q_next; } ;
typedef TYPE_1__ ips_scb_t ;
struct TYPE_6__ {int count; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ ips_scb_queue_t ;


 int METHOD_TRACE (char*,int) ;

__attribute__((used)) static ips_scb_t *
ips_removeq_scb_head(ips_scb_queue_t * queue)
{
 ips_scb_t *item;

 METHOD_TRACE("ips_removeq_scb_head", 1);

 item = queue->head;

 if (!item) {
  return (((void*)0));
 }

 queue->head = item->q_next;
 item->q_next = ((void*)0);

 if (queue->tail == item)
  queue->tail = ((void*)0);

 queue->count--;

 return (item);
}
