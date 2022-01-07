
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {int dummy; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 int ELEVATOR_FRONT_MERGE ;
 int deadline_add_rq_rb (struct deadline_data*,struct request*) ;
 int deadline_rb_root (struct deadline_data*,struct request*) ;
 int elv_rb_del (int ,struct request*) ;

__attribute__((used)) static void deadline_merged_request(struct request_queue *q,
        struct request *req, int type)
{
 struct deadline_data *dd = q->elevator->elevator_data;




 if (type == ELEVATOR_FRONT_MERGE) {
  elv_rb_del(deadline_rb_root(dd, req), req);
  deadline_add_rq_rb(dd, req);
 }
}
