
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ count; int id; } ;


 int BUG_ON (int) ;
 int clocks_lock ;
 int pc_clk_disable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;
 spin_lock_irqsave(&clocks_lock, flags);
 BUG_ON(clk->count == 0);
 clk->count--;
 if (clk->count == 0)
  pc_clk_disable(clk->id);
 spin_unlock_irqrestore(&clocks_lock, flags);
}
