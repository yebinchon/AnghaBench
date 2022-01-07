
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* ops; int usage; struct clk* parent; } ;
struct TYPE_2__ {int (* enable ) (struct clk*) ;} ;


 int EINVAL ;
 int clk_good (struct clk*) ;
 int clocks_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

int clk_enable(struct clk *clk)
{
 unsigned long clocks_flags;

 if (unlikely(!clk_good(clk)))
  return -EINVAL;

 if (clk->parent)
  clk_enable(clk->parent);

 spin_lock_irqsave(&clocks_lock, clocks_flags);

 clk->usage++;
 if (clk->ops && clk->ops->enable)
  clk->ops->enable(clk);

 spin_unlock_irqrestore(&clocks_lock, clocks_flags);
 return 0;
}
