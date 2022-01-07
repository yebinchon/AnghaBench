
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int cfqg; int * p_root; int p_node; int * service_tree; int rb_node; } ;
struct cfq_data {int busy_queues; } ;


 int BUG_ON (int) ;
 int RB_EMPTY_NODE (int *) ;
 int cfq_cfqq_on_rr (struct cfq_queue*) ;
 int cfq_clear_cfqq_on_rr (struct cfq_queue*) ;
 int cfq_group_notify_queue_del (struct cfq_data*,int ) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 int cfq_rb_erase (int *,int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void cfq_del_cfqq_rr(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 cfq_log_cfqq(cfqd, cfqq, "del_from_rr");
 BUG_ON(!cfq_cfqq_on_rr(cfqq));
 cfq_clear_cfqq_on_rr(cfqq);

 if (!RB_EMPTY_NODE(&cfqq->rb_node)) {
  cfq_rb_erase(&cfqq->rb_node, cfqq->service_tree);
  cfqq->service_tree = ((void*)0);
 }
 if (cfqq->p_root) {
  rb_erase(&cfqq->p_node, cfqq->p_root);
  cfqq->p_root = ((void*)0);
 }

 cfq_group_notify_queue_del(cfqd, cfqq->cfqg);
 BUG_ON(!cfqd->busy_queues);
 cfqd->busy_queues--;
}
