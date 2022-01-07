
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {int total_weight; } ;
struct cfq_group {int weight; } ;
struct cfq_data {struct cfq_rb_root grp_service_tree; } ;


 int cfq_target_latency ;

__attribute__((used)) static inline unsigned
cfq_group_slice(struct cfq_data *cfqd, struct cfq_group *cfqg)
{
 struct cfq_rb_root *st = &cfqd->grp_service_tree;

 return cfq_target_latency * cfqg->weight / st->total_weight;
}
