
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct as_data {int dummy; } ;


 int RQ_RB_ROOT (struct as_data*,struct request*) ;
 int elv_rb_del (int ,struct request*) ;

__attribute__((used)) static inline void as_del_rq_rb(struct as_data *ad, struct request *rq)
{
 elv_rb_del(RQ_RB_ROOT(ad, rq), rq);
}
