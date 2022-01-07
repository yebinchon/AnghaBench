
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_ns; unsigned int pwm_up_count; unsigned int pwm_down_count; } ;


 int EAGAIN ;
 int EINVAL ;


 int MSeries_Cal_PWM_High_Time_Bits (unsigned int) ;
 int MSeries_Cal_PWM_Low_Time_Bits (unsigned int) ;
 int M_Offset_Cal_PWM ;



 TYPE_1__* devpriv ;
 int ni_get_pwm_config (struct comedi_device*,unsigned int*) ;
 int ni_writel (int,int ) ;

__attribute__((used)) static int ni_m_series_pwm_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 unsigned up_count, down_count;
 switch (data[0]) {
 case 131:
  switch (data[1]) {
  case 129:
   up_count =
       (data[2] +
        devpriv->clock_ns / 2) / devpriv->clock_ns;
   break;
  case 130:
   up_count = data[2] / devpriv->clock_ns;
   break;
  case 128:
   up_count =
       (data[2] + devpriv->clock_ns -
        1) / devpriv->clock_ns;
   break;
  default:
   return -EINVAL;
   break;
  }
  switch (data[3]) {
  case 129:
   down_count =
       (data[4] +
        devpriv->clock_ns / 2) / devpriv->clock_ns;
   break;
  case 130:
   down_count = data[4] / devpriv->clock_ns;
   break;
  case 128:
   down_count =
       (data[4] + devpriv->clock_ns -
        1) / devpriv->clock_ns;
   break;
  default:
   return -EINVAL;
   break;
  }
  if (up_count * devpriv->clock_ns != data[2] ||
      down_count * devpriv->clock_ns != data[4]) {
   data[2] = up_count * devpriv->clock_ns;
   data[4] = down_count * devpriv->clock_ns;
   return -EAGAIN;
  }
  ni_writel(MSeries_Cal_PWM_High_Time_Bits(up_count) |
     MSeries_Cal_PWM_Low_Time_Bits(down_count),
     M_Offset_Cal_PWM);
  devpriv->pwm_up_count = up_count;
  devpriv->pwm_down_count = down_count;
  return 5;
  break;
 case 132:
  return ni_get_pwm_config(dev, data);
  break;
 default:
  return -EINVAL;
  break;
 }
 return 0;
}
