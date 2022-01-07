
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {scalar_t__ dma; scalar_t__ type; } ;


 scalar_t__ IVTV_ENC_STREAM_TYPE_VBI ;
 scalar_t__ PCI_DMA_NONE ;
 scalar_t__ SLICED_VBI_PIO ;

__attribute__((used)) static inline int ivtv_might_use_pio(struct ivtv_stream *s)
{
 return s->dma == PCI_DMA_NONE || (SLICED_VBI_PIO && s->type == IVTV_ENC_STREAM_TYPE_VBI);
}
