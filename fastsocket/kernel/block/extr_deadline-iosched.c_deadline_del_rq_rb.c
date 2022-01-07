
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct deadline_data {struct request** next_rq; } ;


 struct request* deadline_latter_request (struct request*) ;
 int deadline_rb_root (struct deadline_data*,struct request*) ;
 int elv_rb_del (int ,struct request*) ;
 int rq_data_dir (struct request*) ;

__attribute__((used)) static inline void
deadline_del_rq_rb(struct deadline_data *dd, struct request *rq)
{
 const int data_dir = rq_data_dir(rq);

 if (dd->next_rq[data_dir] == rq)
  dd->next_rq[data_dir] = deadline_latter_request(rq);

 elv_rb_del(deadline_rb_root(dd, rq), rq);
}
