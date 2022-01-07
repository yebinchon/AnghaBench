
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int queuelist; } ;
struct noop_data {int queue; } ;
struct TYPE_2__ {struct noop_data* elevator_data; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void noop_add_request(struct request_queue *q, struct request *rq)
{
 struct noop_data *nd = q->elevator->elevator_data;

 list_add_tail(&rq->queuelist, &nd->queue);
}
