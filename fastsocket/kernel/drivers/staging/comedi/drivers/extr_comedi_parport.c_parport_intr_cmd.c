
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int c_data; int enable_irq; } ;


 scalar_t__ PARPORT_C ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int parport_intr_cmd(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 devpriv->c_data |= 0x10;
 outb(devpriv->c_data, dev->iobase + PARPORT_C);

 devpriv->enable_irq = 1;

 return 0;
}
