
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int __clk_disable (struct clk*) ;
 int clockfw_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 if (clk == ((void*)0) || IS_ERR(clk))
  return;

 spin_lock_irqsave(&clockfw_lock, flags);
 __clk_disable(clk);
 spin_unlock_irqrestore(&clockfw_lock, flags);
}
