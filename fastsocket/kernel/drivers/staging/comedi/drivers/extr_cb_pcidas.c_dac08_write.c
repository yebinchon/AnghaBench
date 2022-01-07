
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int dac08_value; scalar_t__ control_status; } ;


 scalar_t__ CALIBRATION_REG ;
 unsigned int SELECT_DAC08_BIT ;
 unsigned int cal_enable_bits (struct comedi_device*) ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int dac08_write(struct comedi_device *dev, unsigned int value)
{
 if (devpriv->dac08_value == value)
  return 1;

 devpriv->dac08_value = value;

 outw(cal_enable_bits(dev) | (value & 0xff),
      devpriv->control_status + CALIBRATION_REG);
 udelay(1);
 outw(cal_enable_bits(dev) | SELECT_DAC08_BIT | (value & 0xff),
      devpriv->control_status + CALIBRATION_REG);
 udelay(1);
 outw(cal_enable_bits(dev) | (value & 0xff),
      devpriv->control_status + CALIBRATION_REG);
 udelay(1);

 return 1;
}
