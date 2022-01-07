
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {scalar_t__ clk_enabled; int clk; } ;


 int clk_disable (int ) ;

void pwm_disable(struct pwm_device *pwm)
{
 if (pwm->clk_enabled) {
  clk_disable(pwm->clk);
  pwm->clk_enabled = 0;
 }
}
