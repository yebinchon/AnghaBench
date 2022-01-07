
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_4__ {TYPE_1__* aic; } ;
struct TYPE_3__ {int nr_dispatched; } ;


 int AS_RQ_DISPATCHED ;
 scalar_t__ AS_RQ_REMOVED ;
 TYPE_2__* RQ_IOC (struct request*) ;
 int RQ_SET_STATE (struct request*,int ) ;
 scalar_t__ RQ_STATE (struct request*) ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;

__attribute__((used)) static void as_deactivate_request(struct request_queue *q, struct request *rq)
{
 WARN_ON(RQ_STATE(rq) != AS_RQ_REMOVED);
 RQ_SET_STATE(rq, AS_RQ_DISPATCHED);
 if (RQ_IOC(rq) && RQ_IOC(rq)->aic)
  atomic_inc(&RQ_IOC(rq)->aic->nr_dispatched);
}
