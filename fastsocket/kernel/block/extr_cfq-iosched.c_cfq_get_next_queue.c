
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {int rb; } ;
struct cfq_queue {int dummy; } ;
struct cfq_data {int rq_queued; int serving_type; int serving_prio; int serving_group; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 struct cfq_queue* cfq_rb_first (struct cfq_rb_root*) ;
 struct cfq_rb_root* service_tree_for (int ,int ,int ) ;

__attribute__((used)) static struct cfq_queue *cfq_get_next_queue(struct cfq_data *cfqd)
{
 struct cfq_rb_root *service_tree =
  service_tree_for(cfqd->serving_group, cfqd->serving_prio,
     cfqd->serving_type);

 if (!cfqd->rq_queued)
  return ((void*)0);


 if (!service_tree)
  return ((void*)0);
 if (RB_EMPTY_ROOT(&service_tree->rb))
  return ((void*)0);
 return cfq_rb_first(service_tree);
}
