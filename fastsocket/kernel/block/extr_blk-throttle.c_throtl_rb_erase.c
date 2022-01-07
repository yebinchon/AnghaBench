
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_rb_root {int count; int rb; struct rb_node* left; } ;
struct rb_node {int dummy; } ;


 int rb_erase_init (struct rb_node*,int *) ;

__attribute__((used)) static void throtl_rb_erase(struct rb_node *n, struct throtl_rb_root *root)
{
 if (root->left == n)
  root->left = ((void*)0);
 rb_erase_init(n, &root->rb);
 --root->count;
}
