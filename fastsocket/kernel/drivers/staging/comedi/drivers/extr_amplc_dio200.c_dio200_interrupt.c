
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ subdevices; int attached; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ intr_sd; } ;


 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 TYPE_1__* devpriv ;
 int dio200_handle_read_intr (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static irqreturn_t dio200_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 int handled;

 if (!dev->attached) {
  return IRQ_NONE;
 }

 if (devpriv->intr_sd >= 0) {
  handled = dio200_handle_read_intr(dev,
        dev->subdevices +
        devpriv->intr_sd);
 } else {
  handled = 0;
 }

 return IRQ_RETVAL(handled);
}
