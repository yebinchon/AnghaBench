
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int pwm_up_count; unsigned int clock_ns; unsigned int pwm_down_count; } ;


 TYPE_1__* devpriv ;

__attribute__((used)) static int ni_get_pwm_config(struct comedi_device *dev, unsigned int *data)
{
 data[1] = devpriv->pwm_up_count * devpriv->clock_ns;
 data[2] = devpriv->pwm_down_count * devpriv->clock_ns;
 return 3;
}
