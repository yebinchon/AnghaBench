
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* enable ) (struct clk*) ;int usecount; struct clk* secondary; struct clk* parent; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int stub1 (struct clk*) ;

__attribute__((used)) static int __clk_enable(struct clk *clk)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;

 __clk_enable(clk->parent);
 __clk_enable(clk->secondary);

 if (clk->usecount++ == 0 && clk->enable)
  clk->enable(clk);

 return 0;
}
