
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {int * active; int rb; } ;
struct cfq_group {int rb_node; } ;
struct cfq_data {struct cfq_rb_root grp_service_tree; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 struct cfq_group* cfq_rb_first_group (struct cfq_rb_root*) ;
 int update_min_vdisktime (struct cfq_rb_root*) ;

__attribute__((used)) static struct cfq_group *cfq_get_next_cfqg(struct cfq_data *cfqd)
{
 struct cfq_rb_root *st = &cfqd->grp_service_tree;
 struct cfq_group *cfqg;

 if (RB_EMPTY_ROOT(&st->rb))
  return ((void*)0);
 cfqg = cfq_rb_first_group(st);
 st->active = &cfqg->rb_node;
 update_min_vdisktime(st);
 return cfqg;
}
