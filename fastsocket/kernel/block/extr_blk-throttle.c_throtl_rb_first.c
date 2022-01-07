
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_rb_root {scalar_t__ left; int rb; int count; } ;
struct throtl_grp {int dummy; } ;


 struct throtl_grp* rb_entry_tg (scalar_t__) ;
 scalar_t__ rb_first (int *) ;

__attribute__((used)) static struct throtl_grp *throtl_rb_first(struct throtl_rb_root *root)
{

 if (!root->count)
  return ((void*)0);

 if (!root->left)
  root->left = rb_first(&root->rb);

 if (root->left)
  return rb_entry_tg(root->left);

 return ((void*)0);
}
