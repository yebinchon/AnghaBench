
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 int attempt_merge (struct request_queue*,struct request*,struct request*) ;
 struct request* elv_latter_request (struct request_queue*,struct request*) ;

int attempt_back_merge(struct request_queue *q, struct request *rq)
{
 struct request *next = elv_latter_request(q, rq);

 if (next)
  return attempt_merge(q, rq, next);

 return 0;
}
