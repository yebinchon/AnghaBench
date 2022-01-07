
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {int total_weight; } ;
struct cfq_group {int rb_node; scalar_t__ weight; } ;


 int RB_EMPTY_NODE (int *) ;
 int cfq_rb_erase (int *,struct cfq_rb_root*) ;

__attribute__((used)) static void
cfq_group_service_tree_del(struct cfq_rb_root *st, struct cfq_group *cfqg)
{
 st->total_weight -= cfqg->weight;
 if (!RB_EMPTY_NODE(&cfqg->rb_node))
  cfq_rb_erase(&cfqg->rb_node, st);
}
