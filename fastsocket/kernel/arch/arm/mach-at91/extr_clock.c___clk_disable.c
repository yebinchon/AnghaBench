
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ users; struct clk* parent; int (* mode ) (struct clk*,int ) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct clk*,int ) ;

__attribute__((used)) static void __clk_disable(struct clk *clk)
{
 BUG_ON(clk->users == 0);
 if (--clk->users == 0 && clk->mode)
  clk->mode(clk, 0);
 if (clk->parent)
  __clk_disable(clk->parent);
}
