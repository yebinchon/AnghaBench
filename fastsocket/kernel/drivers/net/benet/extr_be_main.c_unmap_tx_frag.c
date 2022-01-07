
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;
struct be_eth_wrb {int frag_len; scalar_t__ frag_pa_lo; scalar_t__ frag_pa_hi; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int be_dws_le_to_cpu (struct be_eth_wrb*,int) ;
 int dma_unmap_page (struct device*,int,int ,int ) ;
 int dma_unmap_single (struct device*,int,int ,int ) ;

__attribute__((used)) static void unmap_tx_frag(struct device *dev, struct be_eth_wrb *wrb,
  bool unmap_single)
{
 dma_addr_t dma;

 be_dws_le_to_cpu(wrb, sizeof(*wrb));

 dma = (u64)wrb->frag_pa_hi << 32 | (u64)wrb->frag_pa_lo;
 if (wrb->frag_len) {
  if (unmap_single)
   dma_unmap_single(dev, dma, wrb->frag_len,
      DMA_TO_DEVICE);
  else
   dma_unmap_page(dev, dma, wrb->frag_len, DMA_TO_DEVICE);
 }
}
