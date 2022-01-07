
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int lock; } ;


 unsigned int PWM_CPR_CLKA ;
 unsigned int PWM_CPR_CLKB ;
 int PWM_MR ;
 TYPE_1__* pwm ;
 int pwm_readl (TYPE_1__*,int ) ;
 int pwm_writel (TYPE_1__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pwm_clk_free(unsigned clk)
{
 unsigned long flags;
 u32 mr;

 spin_lock_irqsave(&pwm->lock, flags);
 mr = pwm_readl(pwm, PWM_MR);
 if (clk == PWM_CPR_CLKA)
  pwm_writel(pwm, PWM_MR, mr & ~(0xffff << 0));
 if (clk == PWM_CPR_CLKB)
  pwm_writel(pwm, PWM_MR, mr & ~(0xffff << 16));
 spin_unlock_irqrestore(&pwm->lock, flags);
}
