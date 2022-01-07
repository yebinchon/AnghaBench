
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int next_dma_buf; int dma_runs_to_end; int* hwdmasize; int last_dma_run; int ai_poll_ptr; scalar_t__* dmabuf; int dma; int * hwdmaptr; scalar_t__ ai_neverending; } ;


 int DMA_MODE_READ ;
 int IRQ_HANDLED ;
 scalar_t__ PCL816_CLRINT ;
 unsigned long claim_dma_lock () ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int outb (int ,scalar_t__) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int) ;
 int set_dma_mode (int ,int ) ;
 int transfer_from_dma_buf (struct comedi_device*,struct comedi_subdevice*,short*,int,int) ;

__attribute__((used)) static irqreturn_t interrupt_pcl816_ai_mode13_dma(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices + 0;
 int len, bufptr, this_dma_buf;
 unsigned long dma_flags;
 short *ptr;

 disable_dma(devpriv->dma);
 this_dma_buf = devpriv->next_dma_buf;

 if ((devpriv->dma_runs_to_end > -1) || devpriv->ai_neverending) {

  devpriv->next_dma_buf = 1 - devpriv->next_dma_buf;
  set_dma_mode(devpriv->dma, DMA_MODE_READ);
  dma_flags = claim_dma_lock();

  set_dma_addr(devpriv->dma,
        devpriv->hwdmaptr[devpriv->next_dma_buf]);
  if (devpriv->dma_runs_to_end) {
   set_dma_count(devpriv->dma,
          devpriv->hwdmasize[devpriv->
        next_dma_buf]);
  } else {
   set_dma_count(devpriv->dma, devpriv->last_dma_run);
  }
  release_dma_lock(dma_flags);
  enable_dma(devpriv->dma);
 }

 devpriv->dma_runs_to_end--;
 outb(0, dev->iobase + PCL816_CLRINT);

 ptr = (short *)devpriv->dmabuf[this_dma_buf];

 len = (devpriv->hwdmasize[0] >> 1) - devpriv->ai_poll_ptr;
 bufptr = devpriv->ai_poll_ptr;
 devpriv->ai_poll_ptr = 0;

 transfer_from_dma_buf(dev, s, ptr, bufptr, len);
 return IRQ_HANDLED;
}
