
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct cfq_rb_root {TYPE_1__ rb; int * left; } ;
struct cfq_group {int rb_node; } ;
typedef scalar_t__ s64 ;


 scalar_t__ cfqg_key (struct cfq_rb_root*,struct cfq_group*) ;
 struct cfq_group* rb_entry_cfqg (struct rb_node*) ;
 int rb_insert_color (int *,TYPE_1__*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;

__attribute__((used)) static void
__cfq_group_service_tree_add(struct cfq_rb_root *st, struct cfq_group *cfqg)
{
 struct rb_node **node = &st->rb.rb_node;
 struct rb_node *parent = ((void*)0);
 struct cfq_group *__cfqg;
 s64 key = cfqg_key(st, cfqg);
 int left = 1;

 while (*node != ((void*)0)) {
  parent = *node;
  __cfqg = rb_entry_cfqg(parent);

  if (key < cfqg_key(st, __cfqg))
   node = &parent->rb_left;
  else {
   node = &parent->rb_right;
   left = 0;
  }
 }

 if (left)
  st->left = &cfqg->rb_node;

 rb_link_node(&cfqg->rb_node, parent, node);
 rb_insert_color(&cfqg->rb_node, &st->rb);
}
