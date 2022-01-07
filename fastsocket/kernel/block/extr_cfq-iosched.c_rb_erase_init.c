
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;


 int RB_CLEAR_NODE (struct rb_node*) ;
 int rb_erase (struct rb_node*,struct rb_root*) ;

__attribute__((used)) static void rb_erase_init(struct rb_node *n, struct rb_root *root)
{
 rb_erase(n, root);
 RB_CLEAR_NODE(n);
}
