
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {scalar_t__ batching; scalar_t__ fifo_batch; scalar_t__ writes_starved; struct request** next_rq; TYPE_2__* fifo_list; scalar_t__ starved; int * sort_list; } ;
struct TYPE_4__ {int next; } ;
struct TYPE_3__ {struct deadline_data* elevator_data; } ;


 int BUG_ON (int ) ;
 int RB_EMPTY_ROOT (int *) ;
 size_t READ ;
 size_t WRITE ;
 scalar_t__ deadline_check_fifo (struct deadline_data*,int) ;
 int deadline_move_request (struct deadline_data*,struct request*) ;
 int list_empty (TYPE_2__*) ;
 struct request* rq_entry_fifo (int ) ;

__attribute__((used)) static int deadline_dispatch_requests(struct request_queue *q, int force)
{
 struct deadline_data *dd = q->elevator->elevator_data;
 const int reads = !list_empty(&dd->fifo_list[READ]);
 const int writes = !list_empty(&dd->fifo_list[WRITE]);
 struct request *rq;
 int data_dir;




 if (dd->next_rq[WRITE])
  rq = dd->next_rq[WRITE];
 else
  rq = dd->next_rq[READ];

 if (rq && dd->batching < dd->fifo_batch)

  goto dispatch_request;






 if (reads) {
  BUG_ON(RB_EMPTY_ROOT(&dd->sort_list[READ]));

  if (writes && (dd->starved++ >= dd->writes_starved))
   goto dispatch_writes;

  data_dir = READ;

  goto dispatch_find_request;
 }





 if (writes) {
dispatch_writes:
  BUG_ON(RB_EMPTY_ROOT(&dd->sort_list[WRITE]));

  dd->starved = 0;

  data_dir = WRITE;

  goto dispatch_find_request;
 }

 return 0;

dispatch_find_request:



 if (deadline_check_fifo(dd, data_dir) || !dd->next_rq[data_dir]) {





  rq = rq_entry_fifo(dd->fifo_list[data_dir].next);
 } else {




  rq = dd->next_rq[data_dir];
 }

 dd->batching = 0;

dispatch_request:



 dd->batching++;
 deadline_move_request(dd, rq);

 return 1;
}
