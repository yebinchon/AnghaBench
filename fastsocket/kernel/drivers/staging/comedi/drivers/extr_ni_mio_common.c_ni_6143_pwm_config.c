
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_ns; unsigned int pwm_up_count; unsigned int pwm_down_count; } ;


 int Calibration_HighTime_6143 ;
 int Calibration_LowTime_6143 ;
 int EAGAIN ;
 int EINVAL ;





 TYPE_1__* devpriv ;
 int ni_get_pwm_config (struct comedi_device*,unsigned int*) ;
 int ni_writel (unsigned int,int ) ;

__attribute__((used)) static int ni_6143_pwm_config(struct comedi_device *dev,
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
  ni_writel(up_count, Calibration_HighTime_6143);
  devpriv->pwm_up_count = up_count;
  ni_writel(down_count, Calibration_LowTime_6143);
  devpriv->pwm_down_count = down_count;
  return 5;
  break;
 case 132:
  return ni_get_pwm_config(dev, data);
 default:
  return -EINVAL;
  break;
 }
 return 0;
}
