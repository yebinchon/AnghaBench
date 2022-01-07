
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int irq; scalar_t__ iobase; int attached; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int int816_mode; scalar_t__ irq_was_now_closed; int irq_blocked; int irq_free; } ;


 int DPRINTK (char*) ;




 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PCL816_CLRINT ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int interrupt_pcl816_ai_mode13_dma (int,void*) ;
 int interrupt_pcl816_ai_mode13_int (int,void*) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t interrupt_pcl816(int irq, void *d)
{
 struct comedi_device *dev = d;
 DPRINTK("<I>");

 if (!dev->attached) {
  comedi_error(dev, "premature interrupt");
  return IRQ_HANDLED;
 }

 switch (devpriv->int816_mode) {
 case 131:
 case 129:
  return interrupt_pcl816_ai_mode13_dma(irq, d);
 case 130:
 case 128:
  return interrupt_pcl816_ai_mode13_int(irq, d);
 }

 outb(0, dev->iobase + PCL816_CLRINT);
 if ((!dev->irq) | (!devpriv->irq_free) | (!devpriv->irq_blocked) |
     (!devpriv->int816_mode)) {
  if (devpriv->irq_was_now_closed) {
   devpriv->irq_was_now_closed = 0;

   return IRQ_HANDLED;
  }
  comedi_error(dev, "bad IRQ!");
  return IRQ_NONE;
 }
 comedi_error(dev, "IRQ from unknow source!");
 return IRQ_NONE;
}
