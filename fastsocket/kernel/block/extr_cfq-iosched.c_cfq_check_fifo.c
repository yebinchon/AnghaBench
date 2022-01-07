
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int next; } ;
struct cfq_queue {int cfqd; TYPE_1__ fifo; } ;


 scalar_t__ cfq_cfqq_fifo_expire (struct cfq_queue*) ;
 int cfq_log_cfqq (int ,struct cfq_queue*,char*,struct request*) ;
 int cfq_mark_cfqq_fifo_expire (struct cfq_queue*) ;
 int jiffies ;
 scalar_t__ list_empty (TYPE_1__*) ;
 struct request* rq_entry_fifo (int ) ;
 int rq_fifo_time (struct request*) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static struct request *cfq_check_fifo(struct cfq_queue *cfqq)
{
 struct request *rq = ((void*)0);

 if (cfq_cfqq_fifo_expire(cfqq))
  return ((void*)0);

 cfq_mark_cfqq_fifo_expire(cfqq);

 if (list_empty(&cfqq->fifo))
  return ((void*)0);

 rq = rq_entry_fifo(cfqq->fifo.next);
 if (time_before(jiffies, rq_fifo_time(rq)))
  rq = ((void*)0);

 cfq_log_cfqq(cfqq->cfqd, cfqq, "fifo=%p", rq);
 return rq;
}
