
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {struct request_queue* q; } ;
struct deadline_data {int dummy; } ;


 int deadline_remove_request (struct request_queue*,struct request*) ;
 int elv_dispatch_add_tail (struct request_queue*,struct request*) ;

__attribute__((used)) static inline void
deadline_move_to_dispatch(struct deadline_data *dd, struct request *rq)
{
 struct request_queue *q = rq->q;

 deadline_remove_request(q, rq);
 elv_dispatch_add_tail(q, rq);
}
