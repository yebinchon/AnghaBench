
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_pwm {scalar_t__ mmio_base; } ;


 unsigned int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int ep93xx_pwm_readl(struct ep93xx_pwm *pwm,
  unsigned int off)
{
 return __raw_readl(pwm->mmio_base + off);
}
