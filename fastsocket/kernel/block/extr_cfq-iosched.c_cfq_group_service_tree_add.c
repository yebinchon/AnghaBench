
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {int total_weight; } ;
struct cfq_group {scalar_t__ weight; int rb_node; } ;


 int BUG_ON (int) ;
 int RB_EMPTY_NODE (int *) ;
 int __cfq_group_service_tree_add (struct cfq_rb_root*,struct cfq_group*) ;
 int cfq_update_group_weight (struct cfq_group*) ;

__attribute__((used)) static void
cfq_group_service_tree_add(struct cfq_rb_root *st, struct cfq_group *cfqg)
{
 BUG_ON(!RB_EMPTY_NODE(&cfqg->rb_node));

 cfq_update_group_weight(cfqg);
 __cfq_group_service_tree_add(st, cfqg);
 st->total_weight += cfqg->weight;
}
