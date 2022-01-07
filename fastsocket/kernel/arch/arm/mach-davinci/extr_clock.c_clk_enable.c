
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int __clk_enable (struct clk*) ;
 int clockfw_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_enable(struct clk *clk)
{
 unsigned long flags;

 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;

 spin_lock_irqsave(&clockfw_lock, flags);
 __clk_enable(clk);
 spin_unlock_irqrestore(&clockfw_lock, flags);

 return 0;
}
