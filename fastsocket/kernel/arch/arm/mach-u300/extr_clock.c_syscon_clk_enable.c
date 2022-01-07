
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int clk_val; scalar_t__ hw_ctrld; } ;


 scalar_t__ U300_SYSCON_SBCER ;
 scalar_t__ U300_SYSCON_VBASE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int syscon_clkreg_lock ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void syscon_clk_enable(struct clk *clk)
{
 unsigned long iflags;


 if (clk->hw_ctrld)
  return;

 spin_lock_irqsave(&syscon_clkreg_lock, iflags);
 writew(clk->clk_val, U300_SYSCON_VBASE + U300_SYSCON_SBCER);
 spin_unlock_irqrestore(&syscon_clkreg_lock, iflags);
}
