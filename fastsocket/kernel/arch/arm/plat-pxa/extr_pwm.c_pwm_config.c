
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int clk; scalar_t__ mmio_base; } ;


 int EINVAL ;
 scalar_t__ PWMCR ;
 scalar_t__ PWMDCR ;
 unsigned long PWMDCR_FD ;
 scalar_t__ PWMPCR ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 unsigned long long clk_get_rate (int ) ;
 int do_div (unsigned long long,int) ;

int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
{
 unsigned long long c;
 unsigned long period_cycles, prescale, pv, dc;

 if (pwm == ((void*)0) || period_ns == 0 || duty_ns > period_ns)
  return -EINVAL;

 c = clk_get_rate(pwm->clk);
 c = c * period_ns;
 do_div(c, 1000000000);
 period_cycles = c;

 if (period_cycles < 1)
  period_cycles = 1;
 prescale = (period_cycles - 1) / 1024;
 pv = period_cycles / (prescale + 1) - 1;

 if (prescale > 63)
  return -EINVAL;

 if (duty_ns == period_ns)
  dc = PWMDCR_FD;
 else
  dc = (pv + 1) * duty_ns / period_ns;




 clk_enable(pwm->clk);
 __raw_writel(prescale, pwm->mmio_base + PWMCR);
 __raw_writel(dc, pwm->mmio_base + PWMDCR);
 __raw_writel(pv, pwm->mmio_base + PWMPCR);
 clk_disable(pwm->clk);

 return 0;
}
