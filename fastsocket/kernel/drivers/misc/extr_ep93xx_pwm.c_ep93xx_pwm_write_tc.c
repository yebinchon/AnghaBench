
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ep93xx_pwm {int dummy; } ;


 int EP93XX_PWMx_TERM_COUNT ;
 int ep93xx_pwm_writel (struct ep93xx_pwm*,int ,int ) ;

__attribute__((used)) static inline void ep93xx_pwm_write_tc(struct ep93xx_pwm *pwm, u16 value)
{
 ep93xx_pwm_writel(pwm, value, EP93XX_PWMx_TERM_COUNT);
}
