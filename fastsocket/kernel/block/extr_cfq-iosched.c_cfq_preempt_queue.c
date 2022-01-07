
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {scalar_t__ slice_end; } ;
struct cfq_data {int dummy; } ;


 int BUG_ON (int) ;
 int cfq_cfqq_on_rr (struct cfq_queue*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 int cfq_mark_cfqq_slice_new (struct cfq_queue*) ;
 int cfq_service_tree_add (struct cfq_data*,struct cfq_queue*,int) ;
 int cfq_slice_expired (struct cfq_data*,int) ;

__attribute__((used)) static void cfq_preempt_queue(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 cfq_log_cfqq(cfqd, cfqq, "preempt");
 cfq_slice_expired(cfqd, 1);





 BUG_ON(!cfq_cfqq_on_rr(cfqq));

 cfq_service_tree_add(cfqd, cfqq, 1);

 cfqq->slice_end = 0;
 cfq_mark_cfqq_slice_new(cfqq);
}
