
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int count; int id; } ;


 int clocks_lock ;
 int pc_clk_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_enable(struct clk *clk)
{
 unsigned long flags;
 spin_lock_irqsave(&clocks_lock, flags);
 clk->count++;
 if (clk->count == 1)
  pc_clk_enable(clk->id);
 spin_unlock_irqrestore(&clocks_lock, flags);
 return 0;
}
