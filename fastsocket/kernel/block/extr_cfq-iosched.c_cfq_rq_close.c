
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct cfq_queue {int dummy; } ;
struct cfq_data {int dummy; } ;


 scalar_t__ CFQQ_CLOSE_THR ;
 scalar_t__ cfq_dist_from_last (struct cfq_data*,struct request*) ;

__attribute__((used)) static inline int cfq_rq_close(struct cfq_data *cfqd, struct cfq_queue *cfqq,
          struct request *rq)
{
 return cfq_dist_from_last(cfqd, rq) <= CFQQ_CLOSE_THR;
}
