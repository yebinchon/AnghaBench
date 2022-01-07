
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int events; scalar_t__ cur_chan; } ;
struct TYPE_3__ {int* act_chanlist; size_t act_chanlist_pos; scalar_t__ ai_act_scan; int neverending_ai; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int IRQ_HANDLED ;
 scalar_t__ PCL818_AD_HI ;
 scalar_t__ PCL818_AD_LO ;
 scalar_t__ PCL818_CLRINT ;
 scalar_t__ PCL818_STATUS ;
 int comedi_buf_put (TYPE_2__*,int) ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int pcl818_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int printk (char*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t interrupt_pcl818_ai_mode13_int(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices + 0;
 int low;
 int timeout = 50;

 while (timeout--) {
  if (inb(dev->iobase + PCL818_STATUS) & 0x10)
   goto conv_finish;
  udelay(1);
 }
 outb(0, dev->iobase + PCL818_STATUS);
 comedi_error(dev, "A/D mode1/3 IRQ without DRDY!");
 pcl818_ai_cancel(dev, s);
 s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
 comedi_event(dev, s);
 return IRQ_HANDLED;

conv_finish:
 low = inb(dev->iobase + PCL818_AD_LO);
 comedi_buf_put(s->async, ((inb(dev->iobase + PCL818_AD_HI) << 4) | (low >> 4)));
 outb(0, dev->iobase + PCL818_CLRINT);

 if ((low & 0xf) != devpriv->act_chanlist[devpriv->act_chanlist_pos]) {
  printk
      ("comedi: A/D mode1/3 IRQ - channel dropout %x!=%x !\n",
       (low & 0xf),
       devpriv->act_chanlist[devpriv->act_chanlist_pos]);
  pcl818_ai_cancel(dev, s);
  s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
  comedi_event(dev, s);
  return IRQ_HANDLED;
 }
 if (s->async->cur_chan == 0) {

  devpriv->ai_act_scan--;
 }

 if (!devpriv->neverending_ai) {
  if (devpriv->ai_act_scan == 0) {
   pcl818_ai_cancel(dev, s);
   s->async->events |= COMEDI_CB_EOA;
  }
 }
 comedi_event(dev, s);
 return IRQ_HANDLED;
}
