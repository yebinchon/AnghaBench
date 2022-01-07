
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct deadline_data {int last_sector; int ** next_rq; } ;


 size_t READ ;
 size_t WRITE ;
 int * deadline_latter_request (struct request*) ;
 int deadline_move_to_dispatch (struct deadline_data*,struct request*) ;
 int rq_data_dir (struct request*) ;
 int rq_end_sector (struct request*) ;

__attribute__((used)) static void
deadline_move_request(struct deadline_data *dd, struct request *rq)
{
 const int data_dir = rq_data_dir(rq);

 dd->next_rq[READ] = ((void*)0);
 dd->next_rq[WRITE] = ((void*)0);
 dd->next_rq[data_dir] = deadline_latter_request(rq);

 dd->last_sector = rq_end_sector(rq);





 deadline_move_to_dispatch(dd, rq);
}
