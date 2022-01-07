
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; } ;
struct talitos_edesc {scalar_t__ dma_len; int dma_link_tbl; TYPE_1__ desc; } ;
struct device {int dummy; } ;
struct aead_request {int dst; int src; int assoc; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (struct device*,int ,int,int ) ;
 int dma_unmap_single (struct device*,int ,scalar_t__,int ) ;
 int talitos_sg_unmap (struct device*,struct talitos_edesc*,int ,int ) ;
 int unmap_single_talitos_ptr (struct device*,int *,int ) ;

__attribute__((used)) static void ipsec_esp_unmap(struct device *dev,
       struct talitos_edesc *edesc,
       struct aead_request *areq)
{
 unmap_single_talitos_ptr(dev, &edesc->desc.ptr[6], DMA_FROM_DEVICE);
 unmap_single_talitos_ptr(dev, &edesc->desc.ptr[3], DMA_TO_DEVICE);
 unmap_single_talitos_ptr(dev, &edesc->desc.ptr[2], DMA_TO_DEVICE);
 unmap_single_talitos_ptr(dev, &edesc->desc.ptr[0], DMA_TO_DEVICE);

 dma_unmap_sg(dev, areq->assoc, 1, DMA_TO_DEVICE);

 talitos_sg_unmap(dev, edesc, areq->src, areq->dst);

 if (edesc->dma_len)
  dma_unmap_single(dev, edesc->dma_link_tbl, edesc->dma_len,
     DMA_BIDIRECTIONAL);
}
