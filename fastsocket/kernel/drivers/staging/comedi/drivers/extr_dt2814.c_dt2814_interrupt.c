
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; int attached; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int ntrig; } ;
struct TYPE_3__ {int events; } ;


 int COMEDI_CB_EOA ;
 scalar_t__ DT2814_CSR ;
 scalar_t__ DT2814_DATA ;
 int DT2814_FINISH ;
 int DT2814_TIMEOUT ;
 int IRQ_HANDLED ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_2__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t dt2814_interrupt(int irq, void *d)
{
 int lo, hi;
 struct comedi_device *dev = d;
 struct comedi_subdevice *s;
 int data;

 if (!dev->attached) {
  comedi_error(dev, "spurious interrupt");
  return IRQ_HANDLED;
 }

 s = dev->subdevices + 0;

 hi = inb(dev->iobase + DT2814_DATA);
 lo = inb(dev->iobase + DT2814_DATA);

 data = (hi << 4) | (lo >> 4);

 if (!(--devpriv->ntrig)) {
  int i;

  outb(0, dev->iobase + DT2814_CSR);



  for (i = 0; i < DT2814_TIMEOUT; i++) {
   if (inb(dev->iobase + DT2814_CSR) & DT2814_FINISH)
    break;
  }
  inb(dev->iobase + DT2814_DATA);
  inb(dev->iobase + DT2814_DATA);

  s->async->events |= COMEDI_CB_EOA;
 }
 comedi_event(dev, s);
 return IRQ_HANDLED;
}
