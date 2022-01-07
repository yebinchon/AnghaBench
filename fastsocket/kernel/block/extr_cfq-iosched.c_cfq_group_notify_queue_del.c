
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {int * active; } ;
struct cfq_group {int nr_cfqq; int blkg; scalar_t__ saved_workload_slice; int rb_node; } ;
struct cfq_data {struct cfq_rb_root grp_service_tree; } ;


 int BUG_ON (int) ;
 int cfq_blkiocg_update_dequeue_stats (int *,int) ;
 int cfq_group_service_tree_del (struct cfq_rb_root*,struct cfq_group*) ;
 int cfq_log_cfqg (struct cfq_data*,struct cfq_group*,char*) ;

__attribute__((used)) static void
cfq_group_notify_queue_del(struct cfq_data *cfqd, struct cfq_group *cfqg)
{
 struct cfq_rb_root *st = &cfqd->grp_service_tree;

 if (st->active == &cfqg->rb_node)
  st->active = ((void*)0);

 BUG_ON(cfqg->nr_cfqq < 1);
 cfqg->nr_cfqq--;


 if (cfqg->nr_cfqq)
  return;

 cfq_log_cfqg(cfqd, cfqg, "del_from_rr group");
 cfq_group_service_tree_del(st, cfqg);
 cfqg->saved_workload_slice = 0;
 cfq_blkiocg_update_dequeue_stats(&cfqg->blkg, 1);
}
