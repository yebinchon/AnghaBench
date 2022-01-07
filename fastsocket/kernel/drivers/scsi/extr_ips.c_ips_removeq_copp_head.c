
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ ips_copp_wait_item_t ;
struct TYPE_6__ {int count; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ ips_copp_queue_t ;


 int METHOD_TRACE (char*,int) ;

__attribute__((used)) static ips_copp_wait_item_t *
ips_removeq_copp_head(ips_copp_queue_t * queue)
{
 ips_copp_wait_item_t *item;

 METHOD_TRACE("ips_removeq_copp_head", 1);

 item = queue->head;

 if (!item) {
  return (((void*)0));
 }

 queue->head = item->next;
 item->next = ((void*)0);

 if (queue->tail == item)
  queue->tail = ((void*)0);

 queue->count--;

 return (item);
}
