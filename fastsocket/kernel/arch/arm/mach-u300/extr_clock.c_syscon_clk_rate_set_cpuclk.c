
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ U300_SYSCON_CCR ;
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST ;
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH ;
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE ;
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER ;
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK ;
 scalar_t__ U300_SYSCON_VBASE ;
 int readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int syscon_clkreg_lock ;
 int writew (int,scalar_t__) ;

void syscon_clk_rate_set_cpuclk(unsigned long rate)
{
 u16 val;
 unsigned long iflags;

 switch (rate) {
 case 13000000:
  val = U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER;
  break;
 case 52000000:
  val = U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE;
  break;
 case 104000000:
  val = U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH;
  break;
 case 208000000:
  val = U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST;
  break;
 default:
  return;
 }
 spin_lock_irqsave(&syscon_clkreg_lock, iflags);
 val |= readw(U300_SYSCON_VBASE + U300_SYSCON_CCR) &
  ~U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK ;
 writew(val, U300_SYSCON_VBASE + U300_SYSCON_CCR);
 spin_unlock_irqrestore(&syscon_clkreg_lock, iflags);
}
