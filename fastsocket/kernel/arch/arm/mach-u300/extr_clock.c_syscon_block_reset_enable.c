
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk {int reset; int res_reg; int res_mask; } ;


 int readw (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int syscon_resetreg_lock ;
 int writew (int ,int ) ;

__attribute__((used)) static void syscon_block_reset_enable(struct clk *clk)
{
 u16 val;
 unsigned long iflags;


 if (!clk->res_reg || !clk->res_mask)
  return;
 spin_lock_irqsave(&syscon_resetreg_lock, iflags);
 val = readw(clk->res_reg);
 val |= clk->res_mask;
 writew(val, clk->res_reg);
 spin_unlock_irqrestore(&syscon_resetreg_lock, iflags);
 clk->reset = 1;
}
