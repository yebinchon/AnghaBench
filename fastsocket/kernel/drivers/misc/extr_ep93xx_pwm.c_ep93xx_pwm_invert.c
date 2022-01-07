
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_pwm {int dummy; } ;


 int EP93XX_PWMx_INVERT ;
 int ep93xx_pwm_writel (struct ep93xx_pwm*,int,int ) ;

__attribute__((used)) static inline void ep93xx_pwm_invert(struct ep93xx_pwm *pwm)
{
 ep93xx_pwm_writel(pwm, 0x1, EP93XX_PWMx_INVERT);
}
