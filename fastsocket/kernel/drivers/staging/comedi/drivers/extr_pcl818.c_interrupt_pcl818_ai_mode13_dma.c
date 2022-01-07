
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int events; } ;
struct TYPE_3__ {int next_dma_buf; int dma_runs_to_end; int* hwdmasize; int last_dma_run; short* act_chanlist; size_t act_chanlist_pos; size_t act_chanlist_len; scalar_t__ ai_act_scan; scalar_t__ neverending_ai; scalar_t__* dmabuf; int dma; int * hwdmaptr; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DMA_MODE_READ ;
 int IRQ_HANDLED ;
 scalar_t__ PCL818_CLRINT ;
 unsigned long claim_dma_lock () ;
 int comedi_buf_put (TYPE_2__*,short) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int outb (int ,scalar_t__) ;
 int pcl818_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int printk (char*,...) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int) ;
 int set_dma_mode (int ,int ) ;

__attribute__((used)) static irqreturn_t interrupt_pcl818_ai_mode13_dma(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices + 0;
 int i, len, bufptr;
 unsigned long flags;
 short *ptr;

 disable_dma(devpriv->dma);
 devpriv->next_dma_buf = 1 - devpriv->next_dma_buf;
 if ((devpriv->dma_runs_to_end) > -1 || devpriv->neverending_ai) {
  set_dma_mode(devpriv->dma, DMA_MODE_READ);
  flags = claim_dma_lock();
  set_dma_addr(devpriv->dma,
        devpriv->hwdmaptr[devpriv->next_dma_buf]);
  if (devpriv->dma_runs_to_end || devpriv->neverending_ai) {
   set_dma_count(devpriv->dma,
          devpriv->hwdmasize[devpriv->
        next_dma_buf]);
  } else {
   set_dma_count(devpriv->dma, devpriv->last_dma_run);
  }
  release_dma_lock(flags);
  enable_dma(devpriv->dma);
 }
 printk("comedi: A/D mode1/3 IRQ \n");

 devpriv->dma_runs_to_end--;
 outb(0, dev->iobase + PCL818_CLRINT);
 ptr = (short *)devpriv->dmabuf[1 - devpriv->next_dma_buf];

 len = devpriv->hwdmasize[0] >> 1;
 bufptr = 0;

 for (i = 0; i < len; i++) {
  if ((ptr[bufptr] & 0xf) != devpriv->act_chanlist[devpriv->act_chanlist_pos]) {
   printk
       ("comedi: A/D mode1/3 DMA - channel dropout %d(card)!=%d(chanlist) at %d !\n",
        (ptr[bufptr] & 0xf),
        devpriv->act_chanlist[devpriv->act_chanlist_pos],
        devpriv->act_chanlist_pos);
   pcl818_ai_cancel(dev, s);
   s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
   comedi_event(dev, s);
   return IRQ_HANDLED;
  }

  comedi_buf_put(s->async, ptr[bufptr++] >> 4);

  devpriv->act_chanlist_pos++;
  if (devpriv->act_chanlist_pos >= devpriv->act_chanlist_len) {
   devpriv->ai_act_scan--;
   devpriv->act_chanlist_pos = 0;
  }

  if (!devpriv->neverending_ai)
   if (devpriv->ai_act_scan == 0) {
    pcl818_ai_cancel(dev, s);
    s->async->events |= COMEDI_CB_EOA;
    comedi_event(dev, s);

    return IRQ_HANDLED;
   }
 }

 if (len > 0)
  comedi_event(dev, s);
 return IRQ_HANDLED;
}
