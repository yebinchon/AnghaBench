
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {scalar_t__ usage; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct clk*) ;} ;


 int clk_good (struct clk*) ;
 int clocks_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

void clk_disable(struct clk *clk)
{
 unsigned long clocks_flags;

 if (unlikely(!clk_good(clk)))
  return;

 spin_lock_irqsave(&clocks_lock, clocks_flags);

 if ((--clk->usage) == 0 && clk->ops->disable)
  clk->ops->disable(clk);

 spin_unlock_irqrestore(&clocks_lock, clocks_flags);
 if (clk->parent)
  clk_disable(clk->parent);
}
