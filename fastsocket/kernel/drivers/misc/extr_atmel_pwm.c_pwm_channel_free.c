
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pwm_channel {int dummy; } ;
struct TYPE_3__ {int lock; int clk; int ** handler; int ** channel; } ;


 int PWM_DIS ;
 int PWM_IDR ;
 int clk_disable (int ) ;
 TYPE_1__* pwm ;
 int pwm_writel (TYPE_1__*,int ,int) ;
 int pwmcheck (struct pwm_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pwm_channel_free(struct pwm_channel *ch)
{
 unsigned long flags;
 int t;

 spin_lock_irqsave(&pwm->lock, flags);
 t = pwmcheck(ch);
 if (t >= 0) {
  pwm->channel[t] = ((void*)0);
  pwm->handler[t] = ((void*)0);


  pwm_writel(pwm, PWM_DIS, 1 << t);
  pwm_writel(pwm, PWM_IDR, 1 << t);

  clk_disable(pwm->clk);
  t = 0;
 }
 spin_unlock_irqrestore(&pwm->lock, flags);
 return t;
}
