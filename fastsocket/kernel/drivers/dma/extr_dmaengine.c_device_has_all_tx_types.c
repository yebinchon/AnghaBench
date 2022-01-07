
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int cap_mask; } ;


 int DMA_INTERRUPT ;
 int DMA_MEMCPY ;
 int DMA_MEMSET ;
 int DMA_PQ ;
 int DMA_PQ_VAL ;
 int DMA_XOR ;
 int DMA_XOR_VAL ;
 int dma_has_cap (int ,int ) ;

__attribute__((used)) static bool device_has_all_tx_types(struct dma_device *device)
{
 return 1;
}
