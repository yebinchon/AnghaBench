
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pwm_channel {int index; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;


 int PWM_CCNT ;
 int PWM_CDTY ;
 int PWM_CMR ;
 int PWM_CPRD ;
 int PWM_IMR ;
 int PWM_MR ;
 int PWM_SR ;
 int dev_dbg (struct device*,char*,char*,int ,int ,int ,...) ;
 TYPE_2__* pwm ;
 int pwm_channel_readl (struct pwm_channel*,int ) ;
 int pwm_readl (TYPE_2__*,int ) ;

__attribute__((used)) static void pwm_dumpregs(struct pwm_channel *ch, char *tag)
{
 struct device *dev = &pwm->pdev->dev;

 dev_dbg(dev, "%s: mr %08x, sr %08x, imr %08x\n",
  tag,
  pwm_readl(pwm, PWM_MR),
  pwm_readl(pwm, PWM_SR),
  pwm_readl(pwm, PWM_IMR));
 dev_dbg(dev,
  "pwm ch%d - mr %08x, dty %u, prd %u, cnt %u\n",
  ch->index,
  pwm_channel_readl(ch, PWM_CMR),
  pwm_channel_readl(ch, PWM_CDTY),
  pwm_channel_readl(ch, PWM_CPRD),
  pwm_channel_readl(ch, PWM_CCNT));
}
