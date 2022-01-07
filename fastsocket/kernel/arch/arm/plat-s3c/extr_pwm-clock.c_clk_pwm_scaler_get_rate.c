
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int S3C2410_TCFG0 ;
 unsigned long S3C2410_TCFG_PRESCALER0_MASK ;
 unsigned long S3C2410_TCFG_PRESCALER1_MASK ;
 unsigned long S3C2410_TCFG_PRESCALER1_SHIFT ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;
 struct clk* clk_timer_scaler ;

__attribute__((used)) static unsigned long clk_pwm_scaler_get_rate(struct clk *clk)
{
 unsigned long tcfg0 = __raw_readl(S3C2410_TCFG0);

 if (clk == &clk_timer_scaler[1]) {
  tcfg0 &= S3C2410_TCFG_PRESCALER1_MASK;
  tcfg0 >>= S3C2410_TCFG_PRESCALER1_SHIFT;
 } else {
  tcfg0 &= S3C2410_TCFG_PRESCALER0_MASK;
 }

 return clk_get_rate(clk->parent) / (tcfg0 + 1);
}
