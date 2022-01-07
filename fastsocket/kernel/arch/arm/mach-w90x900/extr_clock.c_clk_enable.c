
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* enable ) (struct clk*,int) ;int enabled; } ;


 int clocks_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*,int) ;

int clk_enable(struct clk *clk)
{
 unsigned long flags;

 spin_lock_irqsave(&clocks_lock, flags);
 if (clk->enabled++ == 0)
  (clk->enable)(clk, 1);
 spin_unlock_irqrestore(&clocks_lock, flags);

 return 0;
}
