
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {size_t next_dma_buf; int* dmabytestomove; int ai_poll_ptr; int last_dma_run; int dma; scalar_t__ dma_runs_to_end; scalar_t__ ai_eos; int * hwdmaptr; scalar_t__* dmabuf; } ;


 int DMA_MODE_READ ;
 int IRQ_HANDLED ;
 scalar_t__ PCL812_CLRINT ;
 unsigned long claim_dma_lock () ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int outb (int ,scalar_t__) ;
 int printk (char*) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int) ;
 int set_dma_mode (int ,int ) ;
 int transfer_from_dma_buf (struct comedi_device*,struct comedi_subdevice*,short*,int,int) ;

__attribute__((used)) static irqreturn_t interrupt_pcl812_ai_dma(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices + 0;
 unsigned long dma_flags;
 int len, bufptr;
 short *ptr;




 ptr = (short *)devpriv->dmabuf[devpriv->next_dma_buf];
 len = (devpriv->dmabytestomove[devpriv->next_dma_buf] >> 1) -
     devpriv->ai_poll_ptr;

 devpriv->next_dma_buf = 1 - devpriv->next_dma_buf;
 disable_dma(devpriv->dma);
 set_dma_mode(devpriv->dma, DMA_MODE_READ);
 dma_flags = claim_dma_lock();
 set_dma_addr(devpriv->dma, devpriv->hwdmaptr[devpriv->next_dma_buf]);
 if (devpriv->ai_eos) {
  set_dma_count(devpriv->dma,
         devpriv->dmabytestomove[devpriv->next_dma_buf]);
 } else {
  if (devpriv->dma_runs_to_end) {
   set_dma_count(devpriv->dma,
          devpriv->dmabytestomove[devpriv->
             next_dma_buf]);
  } else {
   set_dma_count(devpriv->dma, devpriv->last_dma_run);
  }
  devpriv->dma_runs_to_end--;
 }
 release_dma_lock(dma_flags);
 enable_dma(devpriv->dma);

 outb(0, dev->iobase + PCL812_CLRINT);

 bufptr = devpriv->ai_poll_ptr;
 devpriv->ai_poll_ptr = 0;

 transfer_from_dma_buf(dev, s, ptr, bufptr, len);




 return IRQ_HANDLED;
}
