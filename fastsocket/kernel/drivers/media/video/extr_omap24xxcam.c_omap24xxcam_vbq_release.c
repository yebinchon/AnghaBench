
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dev; } ;
struct videobuf_dmabuf {int direction; int sglen; int sglist; } ;
struct videobuf_buffer {scalar_t__ memory; int state; } ;


 int DMA_NONE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int VIDEOBUF_NEEDS_INIT ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int videobuf_dma_free (struct videobuf_dmabuf*) ;
 int videobuf_dma_unmap (struct videobuf_queue*,struct videobuf_dmabuf*) ;
 struct videobuf_dmabuf* videobuf_to_dma (struct videobuf_buffer*) ;
 int videobuf_waiton (struct videobuf_buffer*,int ,int ) ;

__attribute__((used)) static void omap24xxcam_vbq_release(struct videobuf_queue *vbq,
        struct videobuf_buffer *vb)
{
 struct videobuf_dmabuf *dma = videobuf_to_dma(vb);


 videobuf_waiton(vb, 0, 0);
 if (vb->memory == V4L2_MEMORY_MMAP) {
  dma_unmap_sg(vbq->dev, dma->sglist, dma->sglen,
        dma->direction);
  dma->direction = DMA_NONE;
 } else {
  videobuf_dma_unmap(vbq, videobuf_to_dma(vb));
  videobuf_dma_free(videobuf_to_dma(vb));
 }

 vb->state = VIDEOBUF_NEEDS_INIT;
}
