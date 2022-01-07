
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ U300_SYSCON_CCR ;
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK ;
 scalar_t__ U300_SYSCON_VBASE ;
 int readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int syscon_clkreg_lock ;

__attribute__((used)) static u16 syscon_clk_get_rate(void)
{
 u16 val;
 unsigned long iflags;

 spin_lock_irqsave(&syscon_clkreg_lock, iflags);
 val = readw(U300_SYSCON_VBASE + U300_SYSCON_CCR);
 val &= U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK;
 spin_unlock_irqrestore(&syscon_clkreg_lock, iflags);
 return val;
}
