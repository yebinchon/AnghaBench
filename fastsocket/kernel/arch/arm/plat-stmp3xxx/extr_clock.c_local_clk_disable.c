
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {scalar_t__ usage; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct clk*) ;} ;


 int clk_good (struct clk*) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void local_clk_disable(struct clk *clk)
{
 if (unlikely(!clk_good(clk)))
  return;

 if (clk->usage == 0 && clk->ops->disable)
  clk->ops->disable(clk);

 if (clk->parent)
  local_clk_disable(clk->parent);
}
