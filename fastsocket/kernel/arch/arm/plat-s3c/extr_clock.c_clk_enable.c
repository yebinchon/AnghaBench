
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* enable ) (struct clk*,int) ;int usage; struct clk* parent; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clocks_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct clk*,int) ;

int clk_enable(struct clk *clk)
{
 if (IS_ERR(clk) || clk == ((void*)0))
  return -EINVAL;

 clk_enable(clk->parent);

 spin_lock(&clocks_lock);

 if ((clk->usage++) == 0)
  (clk->enable)(clk, 1);

 spin_unlock(&clocks_lock);
 return 0;
}
