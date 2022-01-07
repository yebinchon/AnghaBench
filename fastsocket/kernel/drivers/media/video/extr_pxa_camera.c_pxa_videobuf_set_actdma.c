
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int channels; } ;
struct pxa_buffer {int active_dma; } ;


 int DMA_U ;
 int DMA_V ;
 int DMA_Y ;

__attribute__((used)) static void pxa_videobuf_set_actdma(struct pxa_camera_dev *pcdev,
        struct pxa_buffer *buf)
{
 buf->active_dma = DMA_Y;
 if (pcdev->channels == 3)
  buf->active_dma |= DMA_U | DMA_V;
}
