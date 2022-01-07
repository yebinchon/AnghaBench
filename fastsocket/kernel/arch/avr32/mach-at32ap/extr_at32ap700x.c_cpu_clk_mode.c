
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int index; } ;


 int CPU_MASK ;
 int pm_lock ;
 int pm_readl (int ) ;
 int pm_writel (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cpu_clk_mode(struct clk *clk, int enabled)
{
 unsigned long flags;
 u32 mask;

 spin_lock_irqsave(&pm_lock, flags);
 mask = pm_readl(CPU_MASK);
 if (enabled)
  mask |= 1 << clk->index;
 else
  mask &= ~(1 << clk->index);
 pm_writel(CPU_MASK, mask);
 spin_unlock_irqrestore(&pm_lock, flags);
}
