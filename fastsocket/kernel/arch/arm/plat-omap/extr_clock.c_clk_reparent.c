
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; int children; int sibling; } ;


 int list_add (int *,int *) ;
 int list_del_init (int *) ;

void clk_reparent(struct clk *child, struct clk *parent)
{
 list_del_init(&child->sibling);
 if (parent)
  list_add(&child->sibling, &parent->children);
 child->parent = parent;



}
