
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_edesc {int src_nents; int dst_nents; scalar_t__ src_is_chained; scalar_t__ dst_is_chained; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (struct device*,struct scatterlist*,unsigned int,int ) ;
 int talitos_unmap_sg_chain (struct device*,struct scatterlist*,int ) ;

__attribute__((used)) static void talitos_sg_unmap(struct device *dev,
        struct talitos_edesc *edesc,
        struct scatterlist *src,
        struct scatterlist *dst)
{
 unsigned int src_nents = edesc->src_nents ? : 1;
 unsigned int dst_nents = edesc->dst_nents ? : 1;

 if (src != dst) {
  if (edesc->src_is_chained)
   talitos_unmap_sg_chain(dev, src, DMA_TO_DEVICE);
  else
   dma_unmap_sg(dev, src, src_nents, DMA_TO_DEVICE);

  if (edesc->dst_is_chained)
   talitos_unmap_sg_chain(dev, dst, DMA_FROM_DEVICE);
  else
   dma_unmap_sg(dev, dst, dst_nents, DMA_FROM_DEVICE);
 } else
  if (edesc->src_is_chained)
   talitos_unmap_sg_chain(dev, src, DMA_BIDIRECTIONAL);
  else
   dma_unmap_sg(dev, src, src_nents, DMA_BIDIRECTIONAL);
}
