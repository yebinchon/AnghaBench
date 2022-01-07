
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ dma1; scalar_t__ dma0; } ;


 scalar_t__ DAS1800_CONTROL_A ;
 scalar_t__ DAS1800_CONTROL_B ;
 scalar_t__ DAS1800_STATUS ;
 TYPE_1__* devpriv ;
 int disable_dma (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int das1800_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 outb(0x0, dev->iobase + DAS1800_STATUS);
 outb(0x0, dev->iobase + DAS1800_CONTROL_B);
 outb(0x0, dev->iobase + DAS1800_CONTROL_A);
 if (devpriv->dma0)
  disable_dma(devpriv->dma0);
 if (devpriv->dma1)
  disable_dma(devpriv->dma1);
 return 0;
}
