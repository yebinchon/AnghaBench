
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int node; TYPE_1__* elevator; } ;
struct request {int queuelist; int * elevator_private; } ;
struct as_data {int * fifo_list; scalar_t__* fifo_expire; } ;
struct TYPE_6__ {TYPE_2__* aic; } ;
struct TYPE_5__ {int nr_queued; } ;
struct TYPE_4__ {struct as_data* elevator_data; } ;


 int AS_RQ_NEW ;
 int AS_RQ_QUEUED ;
 TYPE_3__* RQ_IOC (struct request*) ;
 int RQ_RB_ROOT (struct as_data*,struct request*) ;
 int RQ_SET_STATE (struct request*,int ) ;
 int as_get_io_context (int ) ;
 int as_update_iohist (struct as_data*,TYPE_2__*,struct request*) ;
 int as_update_rq (struct as_data*,struct request*) ;
 int atomic_inc (int *) ;
 int elv_rb_add (int ,struct request*) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int rq_is_sync (struct request*) ;
 int rq_set_fifo_time (struct request*,scalar_t__) ;

__attribute__((used)) static void as_add_request(struct request_queue *q, struct request *rq)
{
 struct as_data *ad = q->elevator->elevator_data;
 int data_dir;

 RQ_SET_STATE(rq, AS_RQ_NEW);

 data_dir = rq_is_sync(rq);

 rq->elevator_private[0] = as_get_io_context(q->node);

 if (RQ_IOC(rq)) {
  as_update_iohist(ad, RQ_IOC(rq)->aic, rq);
  atomic_inc(&RQ_IOC(rq)->aic->nr_queued);
 }

 elv_rb_add(RQ_RB_ROOT(ad, rq), rq);




 rq_set_fifo_time(rq, jiffies + ad->fifo_expire[data_dir]);
 list_add_tail(&rq->queuelist, &ad->fifo_list[data_dir]);

 as_update_rq(ad, rq);
 RQ_SET_STATE(rq, AS_RQ_QUEUED);
}
