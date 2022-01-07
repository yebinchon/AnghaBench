
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int irq; scalar_t__ iobase; struct comedi_subdevice* subdevices; int attached; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ ai_act_scan; int ai_mode; scalar_t__ irq_blocked; int irq_free; scalar_t__ neverending_ai; scalar_t__ irq_was_now_closed; } ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PCL818_CLRINT ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int interrupt_pcl818_ai_mode13_dma (int,void*) ;
 int interrupt_pcl818_ai_mode13_fifo (int,void*) ;
 int interrupt_pcl818_ai_mode13_int (int,void*) ;
 int interrupt_pcl818_ao_mode13_int (int,void*) ;
 int outb (int ,scalar_t__) ;
 int pcl818_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static irqreturn_t interrupt_pcl818(int irq, void *d)
{
 struct comedi_device *dev = d;

 if (!dev->attached) {
  comedi_error(dev, "premature interrupt");
  return IRQ_HANDLED;
 }


 if (devpriv->irq_blocked && devpriv->irq_was_now_closed) {
  if ((devpriv->neverending_ai || (!devpriv->neverending_ai &&
       devpriv->ai_act_scan > 0)) &&
      (devpriv->ai_mode == 135 ||
       devpriv->ai_mode == 132)) {





   struct comedi_subdevice *s = dev->subdevices + 0;
   devpriv->ai_act_scan = 0;
   devpriv->neverending_ai = 0;
   pcl818_ai_cancel(dev, s);
  }

  outb(0, dev->iobase + PCL818_CLRINT);

  return IRQ_HANDLED;
 }

 switch (devpriv->ai_mode) {
 case 135:
 case 132:
  return interrupt_pcl818_ai_mode13_dma(irq, d);
 case 133:
 case 130:
  return interrupt_pcl818_ai_mode13_int(irq, d);
 case 134:
 case 131:
  return interrupt_pcl818_ai_mode13_fifo(irq, d);





 default:
  break;
 }

 outb(0, dev->iobase + PCL818_CLRINT);

 if ((!dev->irq) || (!devpriv->irq_free) || (!devpriv->irq_blocked)
     || (!devpriv->ai_mode)) {
  comedi_error(dev, "bad IRQ!");
  return IRQ_NONE;
 }

 comedi_error(dev, "IRQ from unknow source!");
 return IRQ_NONE;
}
