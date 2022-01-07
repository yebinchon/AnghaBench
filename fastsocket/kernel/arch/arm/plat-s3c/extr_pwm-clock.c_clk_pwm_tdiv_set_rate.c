
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_tdiv_clk {unsigned long divisor; } ;
struct clk {int id; int parent; } ;


 int EINVAL ;
 int S3C2410_TCFG1 ;
 unsigned long S3C2410_TCFG1_MUX_MASK ;
 unsigned long S3C2410_TCFG1_SHIFT (int ) ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_pwm_tdiv_update (struct pwm_tdiv_clk*) ;
 unsigned long clk_round_rate (struct clk*,unsigned long) ;
 int pwm_cfg_src_is_tclk (unsigned long) ;
 struct pwm_tdiv_clk* to_tdiv (struct clk*) ;

__attribute__((used)) static int clk_pwm_tdiv_set_rate(struct clk *clk, unsigned long rate)
{
 struct pwm_tdiv_clk *divclk = to_tdiv(clk);
 unsigned long tcfg1 = __raw_readl(S3C2410_TCFG1);
 unsigned long parent_rate = clk_get_rate(clk->parent);
 unsigned long divisor;

 tcfg1 >>= S3C2410_TCFG1_SHIFT(clk->id);
 tcfg1 &= S3C2410_TCFG1_MUX_MASK;

 rate = clk_round_rate(clk, rate);
 divisor = parent_rate / rate;

 if (divisor > 16)
  return -EINVAL;

 divclk->divisor = divisor;




 if (!pwm_cfg_src_is_tclk(tcfg1))
  clk_pwm_tdiv_update(divclk);

 return 0;
}
