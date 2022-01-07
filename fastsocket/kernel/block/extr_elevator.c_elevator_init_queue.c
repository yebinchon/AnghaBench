
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {void* (* elevator_init_fn ) (struct request_queue*) ;} ;


 void* stub1 (struct request_queue*) ;

__attribute__((used)) static void *elevator_init_queue(struct request_queue *q,
     struct elevator_queue *eq)
{
 return eq->ops->elevator_init_fn(q);
}
