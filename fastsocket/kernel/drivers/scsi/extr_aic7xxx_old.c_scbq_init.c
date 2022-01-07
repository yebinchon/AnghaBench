
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tail; int * head; } ;
typedef TYPE_1__ scb_queue_type ;



__attribute__((used)) static void
scbq_init(volatile scb_queue_type *queue)
{
  queue->head = ((void*)0);
  queue->tail = ((void*)0);
}
