
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usage; struct clk* parent; int (* endisable ) (struct clk*,int ) ;} ;


 int stub1 (struct clk*,int ) ;

__attribute__((used)) static void clk_disable_unlocked(struct clk *clk)
{
 if (--clk->usage == 0 && clk->endisable)
  clk->endisable(clk, 0);

 if (clk->parent)
  clk_disable_unlocked(clk->parent);
}
