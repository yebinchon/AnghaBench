
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int queuelist; } ;
struct deadline_data {int * fifo_list; scalar_t__* fifo_expire; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 int deadline_add_rq_rb (struct deadline_data*,struct request*) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int rq_data_dir (struct request*) ;
 int rq_set_fifo_time (struct request*,scalar_t__) ;

__attribute__((used)) static void
deadline_add_request(struct request_queue *q, struct request *rq)
{
 struct deadline_data *dd = q->elevator->elevator_data;
 const int data_dir = rq_data_dir(rq);

 deadline_add_rq_rb(dd, rq);




 rq_set_fifo_time(rq, jiffies + dd->fifo_expire[data_dir]);
 list_add_tail(&rq->queuelist, &dd->fifo_list[data_dir]);
}
