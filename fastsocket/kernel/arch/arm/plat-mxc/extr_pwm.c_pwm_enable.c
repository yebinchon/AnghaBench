
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int clk_enabled; int clk; } ;


 int clk_enable (int ) ;

int pwm_enable(struct pwm_device *pwm)
{
 int rc = 0;

 if (!pwm->clk_enabled) {
  rc = clk_enable(pwm->clk);
  if (!rc)
   pwm->clk_enabled = 1;
 }
 return rc;
}
