
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usage; struct clk* parent; int (* enable ) (struct clk*,int ) ;} ;


 scalar_t__ IS_ERR (struct clk*) ;
 int clocks_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct clk*,int ) ;

void clk_disable(struct clk *clk)
{
 if (IS_ERR(clk) || clk == ((void*)0))
  return;

 spin_lock(&clocks_lock);

 if ((--clk->usage) == 0)
  (clk->enable)(clk, 0);

 spin_unlock(&clocks_lock);
 clk_disable(clk->parent);
}
