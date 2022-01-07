
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef enum b43legacy_dmatype { ____Placeholder_b43legacy_dmatype } b43legacy_dmatype ;


 int B43legacy_DMA_30BIT ;
 int B43legacy_DMA_32BIT ;
 int B43legacy_WARN_ON (int) ;
 scalar_t__ DMA_BIT_MASK (int) ;

__attribute__((used)) static enum b43legacy_dmatype dma_mask_to_engine_type(u64 dmamask)
{
 if (dmamask == DMA_BIT_MASK(30))
  return B43legacy_DMA_30BIT;
 if (dmamask == DMA_BIT_MASK(32))
  return B43legacy_DMA_32BIT;
 B43legacy_WARN_ON(1);
 return B43legacy_DMA_30BIT;
}
