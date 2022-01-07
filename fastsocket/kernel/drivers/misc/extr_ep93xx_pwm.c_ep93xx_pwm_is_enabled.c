
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_pwm {int dummy; } ;


 int EP93XX_PWMx_ENABLE ;
 int ep93xx_pwm_readl (struct ep93xx_pwm*,int ) ;

__attribute__((used)) static inline int ep93xx_pwm_is_enabled(struct ep93xx_pwm *pwm)
{
 return ep93xx_pwm_readl(pwm, EP93XX_PWMx_ENABLE) & 0x1;
}
