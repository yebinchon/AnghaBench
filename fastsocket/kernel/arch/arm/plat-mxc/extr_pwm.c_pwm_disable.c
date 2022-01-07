
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {scalar_t__ clk_enabled; int clk; scalar_t__ mmio_base; } ;


 scalar_t__ MX3_PWMCR ;
 int clk_disable (int ) ;
 int writel (int ,scalar_t__) ;

void pwm_disable(struct pwm_device *pwm)
{
 writel(0, pwm->mmio_base + MX3_PWMCR);

 if (pwm->clk_enabled) {
  clk_disable(pwm->clk);
  pwm->clk_enabled = 0;
 }
}
