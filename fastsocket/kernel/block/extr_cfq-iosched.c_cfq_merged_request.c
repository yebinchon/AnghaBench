
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct cfq_queue {int dummy; } ;


 int ELEVATOR_FRONT_MERGE ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 int cfq_reposition_rq_rb (struct cfq_queue*,struct request*) ;

__attribute__((used)) static void cfq_merged_request(struct request_queue *q, struct request *req,
          int type)
{
 if (type == ELEVATOR_FRONT_MERGE) {
  struct cfq_queue *cfqq = RQ_CFQQ(req);

  cfq_reposition_rq_rb(cfqq, req);
 }
}
