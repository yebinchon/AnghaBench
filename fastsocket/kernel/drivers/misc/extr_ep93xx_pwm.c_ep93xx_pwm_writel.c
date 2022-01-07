
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_pwm {scalar_t__ mmio_base; } ;


 int __raw_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void ep93xx_pwm_writel(struct ep93xx_pwm *pwm,
  unsigned int val, unsigned int off)
{
 __raw_writel(val, pwm->mmio_base + off);
}
