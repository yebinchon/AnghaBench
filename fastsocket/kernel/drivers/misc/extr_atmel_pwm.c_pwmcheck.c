
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_channel {int index; } ;
struct TYPE_2__ {struct pwm_channel** channel; } ;


 int EINVAL ;
 int ENODEV ;
 int PWM_NCHAN ;
 TYPE_1__* pwm ;

__attribute__((used)) static int pwmcheck(struct pwm_channel *ch)
{
 int index;

 if (!pwm)
  return -ENODEV;
 if (!ch)
  return -EINVAL;
 index = ch->index;
 if (index < 0 || index >= PWM_NCHAN || pwm->channel[index] != ch)
  return -EINVAL;

 return index;
}
