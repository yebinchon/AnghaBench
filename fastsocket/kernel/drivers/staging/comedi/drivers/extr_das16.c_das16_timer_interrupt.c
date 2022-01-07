
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int timer; scalar_t__ timer_running; } ;


 int das16_interrupt (struct comedi_device*) ;
 TYPE_1__* devpriv ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ timer_period () ;

__attribute__((used)) static void das16_timer_interrupt(unsigned long arg)
{
 struct comedi_device *dev = (struct comedi_device *)arg;

 das16_interrupt(dev);

 if (devpriv->timer_running)
  mod_timer(&devpriv->timer, jiffies + timer_period());
}
