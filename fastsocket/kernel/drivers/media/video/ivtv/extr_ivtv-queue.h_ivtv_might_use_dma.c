
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {scalar_t__ dma; } ;


 scalar_t__ PCI_DMA_NONE ;

__attribute__((used)) static inline int ivtv_might_use_dma(struct ivtv_stream *s)
{
 return s->dma != PCI_DMA_NONE;
}
