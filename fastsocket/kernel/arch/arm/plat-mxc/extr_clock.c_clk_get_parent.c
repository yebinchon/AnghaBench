
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 scalar_t__ IS_ERR (struct clk*) ;

struct clk *clk_get_parent(struct clk *clk)
{
 struct clk *ret = ((void*)0);

 if (clk == ((void*)0) || IS_ERR(clk))
  return ret;

 return clk->parent;
}
