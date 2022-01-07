
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int irq; scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* hwdmasize; int ai_n_chan; int ai_scans; unsigned int dma_runs_to_end; unsigned int last_dma_run; int ai_mode; int dma; int * hwdmaptr; scalar_t__ next_dma_buf; int neverending_ai; } ;


 int DMA_MODE_READ ;
 int INT_TYPE_AI1_DMA ;
 int INT_TYPE_AI3_DMA ;
 scalar_t__ PCL818_CONTROL ;
 unsigned int claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int outb (int,scalar_t__) ;
 int printk (char*,int) ;
 int release_dma_lock (unsigned int) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,unsigned int) ;
 int set_dma_mode (int ,int ) ;

__attribute__((used)) static void pcl818_ai_mode13dma_int(int mode, struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 unsigned int flags;
 unsigned int bytes;

 printk("mode13dma_int, mode: %d\n", mode);
 disable_dma(devpriv->dma);
 bytes = devpriv->hwdmasize[0];
 if (!devpriv->neverending_ai) {
  bytes = devpriv->ai_n_chan * devpriv->ai_scans * sizeof(short);
  devpriv->dma_runs_to_end = bytes / devpriv->hwdmasize[0];
  devpriv->last_dma_run = bytes % devpriv->hwdmasize[0];
  devpriv->dma_runs_to_end--;
  if (devpriv->dma_runs_to_end >= 0)
   bytes = devpriv->hwdmasize[0];
 }

 devpriv->next_dma_buf = 0;
 set_dma_mode(devpriv->dma, DMA_MODE_READ);
 flags = claim_dma_lock();
 clear_dma_ff(devpriv->dma);
 set_dma_addr(devpriv->dma, devpriv->hwdmaptr[0]);
 set_dma_count(devpriv->dma, bytes);
 release_dma_lock(flags);
 enable_dma(devpriv->dma);

 if (mode == 1) {
  devpriv->ai_mode = INT_TYPE_AI1_DMA;
  outb(0x87 | (dev->irq << 4), dev->iobase + PCL818_CONTROL);
 } else {
  devpriv->ai_mode = INT_TYPE_AI3_DMA;
  outb(0x86 | (dev->irq << 4), dev->iobase + PCL818_CONTROL);
 };
}
