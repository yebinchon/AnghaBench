
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {long (* set_rate ) (struct clk*,unsigned long,int) ;} ;


 int ENOSYS ;
 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 long stub1 (struct clk*,unsigned long,int) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 unsigned long flags;
 long ret;

 if (!clk->set_rate)
  return -ENOSYS;

 spin_lock_irqsave(&clk_lock, flags);
 ret = clk->set_rate(clk, rate, 1);
 spin_unlock_irqrestore(&clk_lock, flags);

 return (ret < 0) ? ret : 0;
}
