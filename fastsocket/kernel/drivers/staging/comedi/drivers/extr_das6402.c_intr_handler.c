
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int attached; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ ai_bytes_to_read; scalar_t__ das6402_wordsread; scalar_t__ das6402_irqcount; scalar_t__ das6402_ignoreirq; } ;
struct TYPE_3__ {scalar_t__ buf_write_count; int events; } ;


 int COMEDI_CB_EOA ;
 int IRQ_HANDLED ;
 int SCANL ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int das6402_ai_fifo_dregs (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_2__* devpriv ;
 scalar_t__ diff ;
 scalar_t__ inw_p (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outw_p (int ,scalar_t__) ;
 int printk (char*,...) ;

__attribute__((used)) static irqreturn_t intr_handler(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices;

 if (!dev->attached || devpriv->das6402_ignoreirq) {
  printk("das6402: BUG: spurious interrupt\n");
  return IRQ_HANDLED;
 }






 das6402_ai_fifo_dregs(dev, s);

 if (s->async->buf_write_count >= devpriv->ai_bytes_to_read) {
  outw_p(SCANL, dev->iobase + 2);
  outb(0x07, dev->iobase + 8);




  s->async->events |= COMEDI_CB_EOA;
  comedi_event(dev, s);
 }

 outb(0x01, dev->iobase + 8);

 comedi_event(dev, s);
 return IRQ_HANDLED;
}
