
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int ** elevator_private; } ;
struct cfq_queue {int * allocated; } ;
struct TYPE_2__ {int ioc; } ;


 int BUG_ON (int) ;
 int RQ_CFQG (struct request*) ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 TYPE_1__* RQ_CIC (struct request*) ;
 int cfq_put_cfqg (int ) ;
 int cfq_put_queue (struct cfq_queue*) ;
 int put_io_context (int ) ;
 int rq_data_dir (struct request*) ;

__attribute__((used)) static void cfq_put_request(struct request *rq)
{
 struct cfq_queue *cfqq = RQ_CFQQ(rq);

 if (cfqq) {
  const int rw = rq_data_dir(rq);

  BUG_ON(!cfqq->allocated[rw]);
  cfqq->allocated[rw]--;

  put_io_context(RQ_CIC(rq)->ioc);

  rq->elevator_private[0] = ((void*)0);
  rq->elevator_private[1] = ((void*)0);


  cfq_put_cfqg(RQ_CFQG(rq));
  rq->elevator_private[2] = ((void*)0);

  cfq_put_queue(cfqq);
 }
}
