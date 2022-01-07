
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int __clk_enable (struct clk*) ;
 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_enable(struct clk *clk)
{
 unsigned long flags;

 spin_lock_irqsave(&clk_lock, flags);
 __clk_enable(clk);
 spin_unlock_irqrestore(&clk_lock, flags);

 return 0;
}
