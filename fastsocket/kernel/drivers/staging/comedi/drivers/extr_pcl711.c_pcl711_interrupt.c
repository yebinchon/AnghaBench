
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int attached; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int ntrig; } ;
struct TYPE_5__ {scalar_t__ is_8112; } ;
struct TYPE_4__ {int events; } ;


 int COMEDI_CB_EOA ;
 int IRQ_HANDLED ;
 scalar_t__ PCL711_AD_HI ;
 scalar_t__ PCL711_AD_LO ;
 scalar_t__ PCL711_CLRINTR ;
 scalar_t__ PCL711_MODE ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_3__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 TYPE_2__* this_board ;

__attribute__((used)) static irqreturn_t pcl711_interrupt(int irq, void *d)
{
 int lo, hi;
 int data;
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices + 0;

 if (!dev->attached) {
  comedi_error(dev, "spurious interrupt");
  return IRQ_HANDLED;
 }

 hi = inb(dev->iobase + PCL711_AD_HI);
 lo = inb(dev->iobase + PCL711_AD_LO);
 outb(0, dev->iobase + PCL711_CLRINTR);

 data = (hi << 8) | lo;


 if (!(--devpriv->ntrig)) {
  if (this_board->is_8112) {
   outb(1, dev->iobase + PCL711_MODE);
  } else {
   outb(0, dev->iobase + PCL711_MODE);
  }

  s->async->events |= COMEDI_CB_EOA;
 }
 comedi_event(dev, s);
 return IRQ_HANDLED;
}
