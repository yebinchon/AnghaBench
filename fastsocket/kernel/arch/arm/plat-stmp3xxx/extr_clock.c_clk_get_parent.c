
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 int clk_good (struct clk*) ;
 scalar_t__ unlikely (int) ;

struct clk *clk_get_parent(struct clk *clk)
{
 if (unlikely(!clk_good(clk)))
  return ((void*)0);
 return clk->parent;
}
