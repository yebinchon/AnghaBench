
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ enabled; int (* enable ) (struct clk*,int ) ;} ;


 int WARN_ON (int) ;
 int clocks_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*,int ) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 WARN_ON(clk->enabled == 0);

 spin_lock_irqsave(&clocks_lock, flags);
 if (--clk->enabled == 0)
  (clk->enable)(clk, 0);
 spin_unlock_irqrestore(&clocks_lock, flags);
}
