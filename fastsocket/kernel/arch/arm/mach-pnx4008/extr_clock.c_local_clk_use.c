
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int usecount; struct clk* parent; } ;


 int local_clk_enable (struct clk*) ;
 int local_clk_unuse (struct clk*) ;

__attribute__((used)) static int local_clk_use(struct clk *clk)
{
 int ret = 0;
 if (clk->usecount++ == 0) {
  if (clk->parent)
   ret = local_clk_use(clk->parent);

  if (ret != 0) {
   clk->usecount--;
   goto out;
  }

  ret = local_clk_enable(clk);

  if (ret != 0 && clk->parent) {
   local_clk_unuse(clk->parent);
   clk->usecount--;
  }
 }
out:
 return ret;
}
