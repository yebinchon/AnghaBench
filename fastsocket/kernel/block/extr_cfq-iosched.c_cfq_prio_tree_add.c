
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct cfq_queue {size_t org_ioprio; int * p_root; int p_node; int next_rq; } ;
struct cfq_data {int * prio_trees; } ;


 int blk_rq_pos (int ) ;
 scalar_t__ cfq_class_idle (struct cfq_queue*) ;
 struct cfq_queue* cfq_prio_tree_lookup (struct cfq_data*,int *,int ,struct rb_node**,struct rb_node***) ;
 int rb_erase (int *,int *) ;
 int rb_insert_color (int *,int *) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;

__attribute__((used)) static void cfq_prio_tree_add(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 struct rb_node **p, *parent;
 struct cfq_queue *__cfqq;

 if (cfqq->p_root) {
  rb_erase(&cfqq->p_node, cfqq->p_root);
  cfqq->p_root = ((void*)0);
 }

 if (cfq_class_idle(cfqq))
  return;
 if (!cfqq->next_rq)
  return;

 cfqq->p_root = &cfqd->prio_trees[cfqq->org_ioprio];
 __cfqq = cfq_prio_tree_lookup(cfqd, cfqq->p_root,
          blk_rq_pos(cfqq->next_rq), &parent, &p);
 if (!__cfqq) {
  rb_link_node(&cfqq->p_node, parent, p);
  rb_insert_color(&cfqq->p_node, cfqq->p_root);
 } else
  cfqq->p_root = ((void*)0);
}
