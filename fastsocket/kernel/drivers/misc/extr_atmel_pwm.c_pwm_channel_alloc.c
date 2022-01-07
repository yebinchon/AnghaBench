
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pwm_channel {int index; int mck; int regs; } ;
struct TYPE_4__ {int mask; int lock; int ** handler; struct pwm_channel** channel; int clk; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int PWM_DIS ;
 int PWM_IDR ;
 int PWM_NCHAN ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int memset (struct pwm_channel*,int ,int) ;
 TYPE_1__* pwm ;
 int pwm_writel (TYPE_1__*,int ,int) ;
 int pwmc_regs (TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pwm_channel_alloc(int index, struct pwm_channel *ch)
{
 unsigned long flags;
 int status = 0;


 if (!pwm || !(pwm->mask & 1 << index))
  return -ENODEV;

 if (index < 0 || index >= PWM_NCHAN || !ch)
  return -EINVAL;
 memset(ch, 0, sizeof *ch);

 spin_lock_irqsave(&pwm->lock, flags);
 if (pwm->channel[index])
  status = -EBUSY;
 else {
  clk_enable(pwm->clk);

  ch->regs = pwmc_regs(pwm, index);
  ch->index = index;


  ch->mck = clk_get_rate(pwm->clk);

  pwm->channel[index] = ch;
  pwm->handler[index] = ((void*)0);


  pwm_writel(pwm, PWM_DIS, 1 << index);
  pwm_writel(pwm, PWM_IDR, 1 << index);
 }
 spin_unlock_irqrestore(&pwm->lock, flags);
 return status;
}
