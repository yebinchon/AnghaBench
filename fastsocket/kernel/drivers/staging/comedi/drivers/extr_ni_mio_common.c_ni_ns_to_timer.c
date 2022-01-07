
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_ns; } ;





 TYPE_1__* devpriv ;

__attribute__((used)) static int ni_ns_to_timer(const struct comedi_device *dev, unsigned nanosec,
     int round_mode)
{
 int divider;
 switch (round_mode) {
 case 129:
 default:
  divider = (nanosec + devpriv->clock_ns / 2) / devpriv->clock_ns;
  break;
 case 130:
  divider = (nanosec) / devpriv->clock_ns;
  break;
 case 128:
  divider = (nanosec + devpriv->clock_ns - 1) / devpriv->clock_ns;
  break;
 }
 return divider - 1;
}
