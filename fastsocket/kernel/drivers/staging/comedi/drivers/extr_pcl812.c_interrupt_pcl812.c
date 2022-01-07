
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int attached; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ ai_dma; } ;


 int IRQ_HANDLED ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int interrupt_pcl812_ai_dma (int,void*) ;
 int interrupt_pcl812_ai_int (int,void*) ;

__attribute__((used)) static irqreturn_t interrupt_pcl812(int irq, void *d)
{
 struct comedi_device *dev = d;

 if (!dev->attached) {
  comedi_error(dev, "spurious interrupt");
  return IRQ_HANDLED;
 }
 if (devpriv->ai_dma) {
  return interrupt_pcl812_ai_dma(irq, d);
 } else {
  return interrupt_pcl812_ai_int(irq, d);
 };
}
