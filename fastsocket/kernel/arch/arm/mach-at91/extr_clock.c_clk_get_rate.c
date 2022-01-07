
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long rate_hz; struct clk* parent; } ;


 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long clk_get_rate(struct clk *clk)
{
 unsigned long flags;
 unsigned long rate;

 spin_lock_irqsave(&clk_lock, flags);
 for (;;) {
  rate = clk->rate_hz;
  if (rate || !clk->parent)
   break;
  clk = clk->parent;
 }
 spin_unlock_irqrestore(&clk_lock, flags);
 return rate;
}
