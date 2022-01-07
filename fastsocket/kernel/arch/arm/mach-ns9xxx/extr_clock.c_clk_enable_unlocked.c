
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* endisable ) (struct clk*,int) ;int usage; struct clk* parent; } ;


 int stub1 (struct clk*,int) ;

__attribute__((used)) static int clk_enable_unlocked(struct clk *clk)
{
 int ret = 0;
 if (clk->parent) {
  ret = clk_enable_unlocked(clk->parent);
  if (ret)
   return ret;
 }

 if (clk->usage++ == 0 && clk->endisable)
  ret = clk->endisable(clk, 1);

 return ret;
}
