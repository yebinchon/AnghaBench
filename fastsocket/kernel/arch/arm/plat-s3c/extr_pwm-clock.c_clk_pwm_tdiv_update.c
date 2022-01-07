
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct pwm_tdiv_clk {TYPE_1__ clk; } ;


 int S3C2410_TCFG1 ;
 unsigned long S3C2410_TCFG1_MUX_MASK ;
 unsigned long S3C2410_TCFG1_SHIFT (int ) ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 unsigned long clk_pwm_tdiv_bits (struct pwm_tdiv_clk*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void clk_pwm_tdiv_update(struct pwm_tdiv_clk *divclk)
{
 unsigned long tcfg1 = __raw_readl(S3C2410_TCFG1);
 unsigned long bits = clk_pwm_tdiv_bits(divclk);
 unsigned long flags;
 unsigned long shift = S3C2410_TCFG1_SHIFT(divclk->clk.id);

 local_irq_save(flags);

 tcfg1 = __raw_readl(S3C2410_TCFG1);
 tcfg1 &= ~(S3C2410_TCFG1_MUX_MASK << shift);
 tcfg1 |= bits << shift;
 __raw_writel(tcfg1, S3C2410_TCFG1);

 local_irq_restore(flags);
}
