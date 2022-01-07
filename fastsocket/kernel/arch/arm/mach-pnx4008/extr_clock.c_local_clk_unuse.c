
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usecount; struct clk* parent; } ;


 int local_clk_disable (struct clk*) ;

__attribute__((used)) static void local_clk_unuse(struct clk *clk)
{
 if (clk->usecount > 0 && !(--clk->usecount)) {
  local_clk_disable(clk);
  if (clk->parent)
   local_clk_unuse(clk->parent);
 }
}
