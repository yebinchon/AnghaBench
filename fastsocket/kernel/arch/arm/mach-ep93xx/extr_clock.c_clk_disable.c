
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int __clk_disable (struct clk*) ;
 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 if (!clk)
  return;

 spin_lock_irqsave(&clk_lock, flags);
 __clk_disable(clk);
 spin_unlock_irqrestore(&clk_lock, flags);
}
