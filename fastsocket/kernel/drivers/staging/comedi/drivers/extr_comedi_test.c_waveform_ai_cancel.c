
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int timer; scalar_t__ timer_running; } ;


 int del_timer (int *) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int waveform_ai_cancel(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 devpriv->timer_running = 0;
 del_timer(&devpriv->timer);
 return 0;
}
