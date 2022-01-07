
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct cfq_data {int rq_queued; } ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;



__attribute__((used)) static int cfq_queue_empty(struct request_queue *q)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;

 return !cfqd->rq_queued;
}
