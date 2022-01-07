
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_disable_unlocked (struct clk*) ;
 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 spin_lock_irqsave(&clk_lock, flags);

 clk_disable_unlocked(clk);

 spin_unlock_irqrestore(&clk_lock, flags);
}
