
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct as_data {int dummy; } ;
struct TYPE_2__ {struct as_data* elevator_data; } ;


 int ELEVATOR_FRONT_MERGE ;
 int RQ_RB_ROOT (struct as_data*,struct request*) ;
 int as_del_rq_rb (struct as_data*,struct request*) ;
 int elv_rb_add (int ,struct request*) ;

__attribute__((used)) static void as_merged_request(struct request_queue *q, struct request *req,
         int type)
{
 struct as_data *ad = q->elevator->elevator_data;




 if (type == ELEVATOR_FRONT_MERGE) {
  as_del_rq_rb(ad, req);
  elv_rb_add(RQ_RB_ROOT(ad, req), req);





 }
}
