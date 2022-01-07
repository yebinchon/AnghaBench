
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_data {int dummy; } ;


 scalar_t__ cfq_cfqq_on_rr (struct cfq_queue*) ;
 int cfq_prio_tree_add (struct cfq_data*,struct cfq_queue*) ;
 int cfq_service_tree_add (struct cfq_data*,struct cfq_queue*,int ) ;

__attribute__((used)) static void cfq_resort_rr_list(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{



 if (cfq_cfqq_on_rr(cfqq)) {
  cfq_service_tree_add(cfqd, cfqq, 0);
  cfq_prio_tree_add(cfqd, cfqq);
 }
}
