
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv_stream {int dma; scalar_t__ buf_size; TYPE_1__* itv; } ;
struct ivtv_buffer {int dma_handle; } ;
struct TYPE_2__ {int pdev; } ;


 scalar_t__ ivtv_use_dma (struct ivtv_stream*) ;
 int pci_dma_sync_single_for_cpu (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static inline void ivtv_buf_sync_for_cpu(struct ivtv_stream *s, struct ivtv_buffer *buf)
{
 if (ivtv_use_dma(s))
  pci_dma_sync_single_for_cpu(s->itv->pdev, buf->dma_handle,
    s->buf_size + 256, s->dma);
}
