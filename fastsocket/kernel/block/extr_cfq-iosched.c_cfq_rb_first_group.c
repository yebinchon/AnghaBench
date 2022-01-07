
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {scalar_t__ left; int rb; } ;
struct cfq_group {int dummy; } ;


 struct cfq_group* rb_entry_cfqg (scalar_t__) ;
 scalar_t__ rb_first (int *) ;

__attribute__((used)) static struct cfq_group *cfq_rb_first_group(struct cfq_rb_root *root)
{
 if (!root->left)
  root->left = rb_first(&root->rb);

 if (root->left)
  return rb_entry_cfqg(root->left);

 return ((void*)0);
}
