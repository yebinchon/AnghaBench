
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int usecount; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct clk*) ;} ;


 int __clk_disable (struct clk*) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __clk_enable(struct clk *clk)
{
 int ret = 0;

 if (clk->usecount++ == 0) {
  if (clk->parent) {
   ret = __clk_enable(clk->parent);
   if (unlikely(ret))
    goto err;
  }

  if (clk->ops && clk->ops->enable) {
   ret = clk->ops->enable(clk);
   if (ret) {
    if (clk->parent)
     __clk_disable(clk->parent);
    goto err;
   }
  }
 }

 return ret;
err:
 clk->usecount--;
 return ret;
}
