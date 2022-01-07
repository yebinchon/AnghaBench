
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_group {int needs_update; int new_weight; int weight; int rb_node; } ;


 int BUG_ON (int) ;
 int RB_EMPTY_NODE (int *) ;

__attribute__((used)) static void
cfq_update_group_weight(struct cfq_group *cfqg)
{
 BUG_ON(!RB_EMPTY_NODE(&cfqg->rb_node));
 if (cfqg->needs_update) {
  cfqg->weight = cfqg->new_weight;
  cfqg->needs_update = 0;
 }
}
