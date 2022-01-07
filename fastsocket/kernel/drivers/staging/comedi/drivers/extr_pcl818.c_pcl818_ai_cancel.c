
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ irq_blocked; int irq_was_now_closed; int ai_mode; int neverending_ai; struct comedi_subdevice* last_int_sub; int usefifo; int dma; int ai_act_scan; int rtc_irq_timer; } ;
 scalar_t__ PCL818_AD_HI ;
 scalar_t__ PCL818_AD_LO ;
 scalar_t__ PCL818_CLRINT ;
 scalar_t__ PCL818_CONTROL ;
 scalar_t__ PCL818_FI_ENABLE ;
 scalar_t__ PCL818_FI_FLUSH ;
 scalar_t__ PCL818_FI_INTCLR ;
 int del_timer (int *) ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;
 int set_rtc_irq_bit (int ) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pcl818_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 if (devpriv->irq_blocked > 0) {
  printk("pcl818_ai_cancel()\n");
  devpriv->irq_was_now_closed = 1;

  switch (devpriv->ai_mode) {






  case 137:
  case 133:
   if (devpriv->neverending_ai ||
       (!devpriv->neverending_ai &&
        devpriv->ai_act_scan > 0)) {

    goto end;
   }
   disable_dma(devpriv->dma);
  case 134:
  case 130:
  case 135:
  case 131:




   outb(inb(dev->iobase + PCL818_CONTROL) & 0x73, dev->iobase + PCL818_CONTROL);
   udelay(1);
   start_pacer(dev, -1, 0, 0);
   outb(0, dev->iobase + PCL818_AD_LO);
   inb(dev->iobase + PCL818_AD_LO);
   inb(dev->iobase + PCL818_AD_HI);
   outb(0, dev->iobase + PCL818_CLRINT);
   outb(0, dev->iobase + PCL818_CONTROL);
   if (devpriv->usefifo) {
    outb(0, dev->iobase + PCL818_FI_INTCLR);
    outb(0, dev->iobase + PCL818_FI_FLUSH);
    outb(0, dev->iobase + PCL818_FI_ENABLE);
   }
   devpriv->irq_blocked = 0;
   devpriv->last_int_sub = s;
   devpriv->neverending_ai = 0;
   devpriv->ai_mode = 0;
   devpriv->irq_was_now_closed = 0;
   break;
  }
 }

end:
 printk("pcl818_ai_cancel() end\n");
 return 0;
}
