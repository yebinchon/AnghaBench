
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int control_state; } ;


 scalar_t__ DAS16M1_INTR_CONTROL ;
 int INTE ;
 int PACER_MASK ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int das16m1_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 devpriv->control_state &= ~INTE & ~PACER_MASK;
 outb(devpriv->control_state, dev->iobase + DAS16M1_INTR_CONTROL);

 return 0;
}
