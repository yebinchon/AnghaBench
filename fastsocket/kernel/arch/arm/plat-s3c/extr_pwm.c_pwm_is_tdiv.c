
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {scalar_t__ clk_div; int clk; } ;


 scalar_t__ clk_get_parent (int ) ;

__attribute__((used)) static inline int pwm_is_tdiv(struct pwm_device *pwm)
{
 return clk_get_parent(pwm->clk) == pwm->clk_div;
}
