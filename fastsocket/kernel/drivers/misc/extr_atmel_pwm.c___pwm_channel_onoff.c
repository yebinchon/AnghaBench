
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pwm_channel {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int PWM_DIS ;
 int PWM_ENA ;
 TYPE_1__* pwm ;
 int pwm_dumpregs (struct pwm_channel*,char*) ;
 int pwm_writel (TYPE_1__*,int ,int) ;
 int pwmcheck (struct pwm_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int __pwm_channel_onoff(struct pwm_channel *ch, int enabled)
{
 unsigned long flags;
 int t;



 spin_lock_irqsave(&pwm->lock, flags);
 t = pwmcheck(ch);
 if (t >= 0) {
  pwm_writel(pwm, enabled ? PWM_ENA : PWM_DIS, 1 << t);
  t = 0;
  pwm_dumpregs(ch, enabled ? "enable" : "disable");
 }
 spin_unlock_irqrestore(&pwm->lock, flags);

 return t;
}
