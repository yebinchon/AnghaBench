
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;


 scalar_t__ AD_FIFO_REG ;
 int IRQ_HANDLED ;
 int comedi_buf_put (int ,int ) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int inw (scalar_t__) ;

__attribute__((used)) static irqreturn_t atmio16d_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices + 0;



 comedi_buf_put(s->async, inw(dev->iobase + AD_FIFO_REG));

 comedi_event(dev, s);
 return IRQ_HANDLED;
}
