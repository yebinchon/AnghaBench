
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* disable ) (struct clk*) ;int usecount; struct clk* secondary; struct clk* parent; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int stub1 (struct clk*) ;

__attribute__((used)) static void __clk_disable(struct clk *clk)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return;

 __clk_disable(clk->parent);
 __clk_disable(clk->secondary);

 if (!(--clk->usecount) && clk->disable)
  clk->disable(clk);
}
