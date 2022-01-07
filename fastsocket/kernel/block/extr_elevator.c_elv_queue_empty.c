
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int queue_head; struct elevator_queue* elevator; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_queue_empty_fn ) (struct request_queue*) ;} ;


 int list_empty (int *) ;
 int stub1 (struct request_queue*) ;

int elv_queue_empty(struct request_queue *q)
{
 struct elevator_queue *e = q->elevator;

 if (!list_empty(&q->queue_head))
  return 0;

 if (e->ops->elevator_queue_empty_fn)
  return e->ops->elevator_queue_empty_fn(q);

 return 1;
}
