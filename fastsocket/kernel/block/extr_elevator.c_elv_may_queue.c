
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_may_queue_fn ) (struct request_queue*,int) ;} ;


 int ELV_MQUEUE_MAY ;
 int stub1 (struct request_queue*,int) ;

int elv_may_queue(struct request_queue *q, int rw)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_may_queue_fn)
  return e->ops->elevator_may_queue_fn(q, rw);

 return ELV_MQUEUE_MAY;
}
