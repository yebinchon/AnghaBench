
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bufsize; int dma; } ;
struct saa7134_dev {TYPE_1__ dmasound; } ;


 int BUG_ON (int) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int videobuf_dma_init (int *) ;
 int videobuf_dma_init_kernel (int *,int ,int) ;

__attribute__((used)) static int dsp_buffer_init(struct saa7134_dev *dev)
{
 int err;

 BUG_ON(!dev->dmasound.bufsize);

 videobuf_dma_init(&dev->dmasound.dma);
 err = videobuf_dma_init_kernel(&dev->dmasound.dma, PCI_DMA_FROMDEVICE,
           (dev->dmasound.bufsize + PAGE_SIZE) >> PAGE_SHIFT);
 if (0 != err)
  return err;
 return 0;
}
