
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct rb_node* rb_node; } ;
struct throtl_rb_root {TYPE_1__ rb; int * left; } ;
struct throtl_grp {unsigned long disptime; int rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;


 struct throtl_grp* rb_entry_tg (struct rb_node*) ;
 int rb_insert_color (int *,TYPE_1__*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void
tg_service_tree_add(struct throtl_rb_root *st, struct throtl_grp *tg)
{
 struct rb_node **node = &st->rb.rb_node;
 struct rb_node *parent = ((void*)0);
 struct throtl_grp *__tg;
 unsigned long key = tg->disptime;
 int left = 1;

 while (*node != ((void*)0)) {
  parent = *node;
  __tg = rb_entry_tg(parent);

  if (time_before(key, __tg->disptime))
   node = &parent->rb_left;
  else {
   node = &parent->rb_right;
   left = 0;
  }
 }

 if (left)
  st->left = &tg->rb_node;

 rb_link_node(&tg->rb_node, parent, node);
 rb_insert_color(&tg->rb_node, &st->rb);
}
