
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dev; } ;
struct videobuf_dmabuf {scalar_t__ sglen; int * sglist; int direction; } ;


 int EIO ;
 int PCI_DMA_FROMDEVICE ;
 int dma_map_sg (int ,int *,scalar_t__,int ) ;
 int kfree (int *) ;

__attribute__((used)) static int omap24xxcam_dma_iolock(struct videobuf_queue *vbq,
      struct videobuf_dmabuf *dma)
{
 int err = 0;

 dma->direction = PCI_DMA_FROMDEVICE;
 if (!dma_map_sg(vbq->dev, dma->sglist, dma->sglen, dma->direction)) {
  kfree(dma->sglist);
  dma->sglist = ((void*)0);
  dma->sglen = 0;
  err = -EIO;
 }

 return err;
}
