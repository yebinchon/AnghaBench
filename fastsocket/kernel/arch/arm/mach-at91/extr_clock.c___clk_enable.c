
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* mode ) (struct clk*,int) ;int users; struct clk* parent; } ;


 int stub1 (struct clk*,int) ;

__attribute__((used)) static void __clk_enable(struct clk *clk)
{
 if (clk->parent)
  __clk_enable(clk->parent);
 if (clk->users++ == 0 && clk->mode)
  clk->mode(clk, 1);
}
