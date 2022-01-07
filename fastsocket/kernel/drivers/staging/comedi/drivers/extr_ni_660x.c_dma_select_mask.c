
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int MAX_DMA_CHANNEL ;

__attribute__((used)) static inline unsigned dma_select_mask(unsigned dma_channel)
{
 BUG_ON(dma_channel >= MAX_DMA_CHANNEL);
 return 0x1f << (8 * dma_channel);
}
