
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_ns; } ;


 TYPE_1__* devpriv ;

__attribute__((used)) static unsigned ni_timer_to_ns(const struct comedi_device *dev, int timer)
{
 return devpriv->clock_ns * (timer + 1);
}
