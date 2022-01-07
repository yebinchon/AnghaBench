
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int mode_reg_int; int dma; scalar_t__ ai_dma; } ;


 scalar_t__ PCL812_CLRINT ;
 scalar_t__ PCL812_MODE ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;

__attribute__((used)) static int pcl812_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{



 if (devpriv->ai_dma)
  disable_dma(devpriv->dma);
 outb(0, dev->iobase + PCL812_CLRINT);
 outb(devpriv->mode_reg_int | 0, dev->iobase + PCL812_MODE);
 start_pacer(dev, -1, 0, 0);
 outb(0, dev->iobase + PCL812_CLRINT);



 return 0;
}
