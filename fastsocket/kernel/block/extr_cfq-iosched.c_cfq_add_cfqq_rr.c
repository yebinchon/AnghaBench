
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_data {int busy_queues; } ;


 int BUG_ON (int ) ;
 int cfq_cfqq_on_rr (struct cfq_queue*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 int cfq_mark_cfqq_on_rr (struct cfq_queue*) ;
 int cfq_resort_rr_list (struct cfq_data*,struct cfq_queue*) ;

__attribute__((used)) static void cfq_add_cfqq_rr(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 cfq_log_cfqq(cfqd, cfqq, "add_to_rr");
 BUG_ON(cfq_cfqq_on_rr(cfqq));
 cfq_mark_cfqq_on_rr(cfqq);
 cfqd->busy_queues++;

 cfq_resort_rr_list(cfqd, cfqq);
}
