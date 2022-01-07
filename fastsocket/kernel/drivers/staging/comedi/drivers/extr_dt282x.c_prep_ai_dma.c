
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int ntrig; int dma_maxsize; TYPE_1__* dma; } ;
struct TYPE_3__ {int size; int chan; int buf; } ;


 int DMA_MODE_READ ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int) ;
 TYPE_2__* devpriv ;
 int enable_dma (int) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int,unsigned long) ;
 int set_dma_count (int,int) ;
 int set_dma_mode (int,int ) ;
 unsigned long virt_to_bus (int ) ;

__attribute__((used)) static int prep_ai_dma(struct comedi_device *dev, int dma_index, int n)
{
 int dma_chan;
 unsigned long dma_ptr;
 unsigned long flags;

 if (!devpriv->ntrig)
  return 0;

 if (n == 0)
  n = devpriv->dma_maxsize;
 if (n > devpriv->ntrig * 2)
  n = devpriv->ntrig * 2;
 devpriv->ntrig -= n / 2;

 devpriv->dma[dma_index].size = n;
 dma_chan = devpriv->dma[dma_index].chan;
 dma_ptr = virt_to_bus(devpriv->dma[dma_index].buf);

 set_dma_mode(dma_chan, DMA_MODE_READ);
 flags = claim_dma_lock();
 clear_dma_ff(dma_chan);
 set_dma_addr(dma_chan, dma_ptr);
 set_dma_count(dma_chan, n);
 release_dma_lock(flags);

 enable_dma(dma_chan);

 return n;
}
