
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long (* set_rate ) (struct clk*,unsigned long,int ) ;} ;


 long ENOSYS ;
 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 (struct clk*,unsigned long,int ) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 unsigned long flags, actual_rate;

 if (!clk->set_rate)
  return -ENOSYS;

 spin_lock_irqsave(&clk_lock, flags);
 actual_rate = clk->set_rate(clk, rate, 0);
 spin_unlock_irqrestore(&clk_lock, flags);

 return actual_rate;
}
