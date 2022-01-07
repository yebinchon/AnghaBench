
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {int dummy; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 int deadline_del_rq_rb (struct deadline_data*,struct request*) ;
 int rq_fifo_clear (struct request*) ;

__attribute__((used)) static void deadline_remove_request(struct request_queue *q, struct request *rq)
{
 struct deadline_data *dd = q->elevator->elevator_data;

 rq_fifo_clear(rq);
 deadline_del_rq_rb(dd, rq);
}
