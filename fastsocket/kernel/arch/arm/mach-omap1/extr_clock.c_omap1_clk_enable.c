
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int flags; int usecount; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct clk*) ;} ;


 int CLOCK_NO_IDLE_PARENT ;
 int omap1_clk_deny_idle (struct clk*) ;
 int omap1_clk_disable (struct clk*) ;
 int stub1 (struct clk*) ;

__attribute__((used)) static int omap1_clk_enable(struct clk *clk)
{
 int ret = 0;

 if (clk->usecount++ == 0) {
  if (clk->parent) {
   ret = omap1_clk_enable(clk->parent);
   if (ret)
    goto err;

   if (clk->flags & CLOCK_NO_IDLE_PARENT)
    omap1_clk_deny_idle(clk->parent);
  }

  ret = clk->ops->enable(clk);
  if (ret) {
   if (clk->parent)
    omap1_clk_disable(clk->parent);
   goto err;
  }
 }
 return ret;

err:
 clk->usecount--;
 return ret;
}
