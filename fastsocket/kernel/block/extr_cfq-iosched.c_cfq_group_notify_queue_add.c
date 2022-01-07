
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct cfq_rb_root {scalar_t__ min_vdisktime; int rb; } ;
struct cfq_group {scalar_t__ vdisktime; int rb_node; int nr_cfqq; } ;
struct cfq_data {struct cfq_rb_root grp_service_tree; } ;


 scalar_t__ CFQ_IDLE_DELAY ;
 int RB_EMPTY_NODE (int *) ;
 int cfq_group_service_tree_add (struct cfq_rb_root*,struct cfq_group*) ;
 struct cfq_group* rb_entry_cfqg (struct rb_node*) ;
 struct rb_node* rb_last (int *) ;

__attribute__((used)) static void
cfq_group_notify_queue_add(struct cfq_data *cfqd, struct cfq_group *cfqg)
{
 struct cfq_rb_root *st = &cfqd->grp_service_tree;
 struct cfq_group *__cfqg;
 struct rb_node *n;

 cfqg->nr_cfqq++;
 if (!RB_EMPTY_NODE(&cfqg->rb_node))
  return;






 n = rb_last(&st->rb);
 if (n) {
  __cfqg = rb_entry_cfqg(n);
  cfqg->vdisktime = __cfqg->vdisktime + CFQ_IDLE_DELAY;
 } else
  cfqg->vdisktime = st->min_vdisktime;
 cfq_group_service_tree_add(st, cfqg);
}
