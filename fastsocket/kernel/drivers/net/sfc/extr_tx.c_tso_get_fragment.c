
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tso_state {int unmap_addr; int dma_addr; void* in_len; void* unmap_len; scalar_t__ dma_flags; } ;
struct efx_nic {TYPE_1__* pci_dev; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int dma_mapping_error (int *,int ) ;
 scalar_t__ likely (int) ;
 int skb_frag_dma_map (int *,int *,int ,void*,int ) ;
 void* skb_frag_size (int *) ;

__attribute__((used)) static int tso_get_fragment(struct tso_state *st, struct efx_nic *efx,
       skb_frag_t *frag)
{
 st->unmap_addr = skb_frag_dma_map(&efx->pci_dev->dev, frag, 0,
       skb_frag_size(frag), DMA_TO_DEVICE);
 if (likely(!dma_mapping_error(&efx->pci_dev->dev, st->unmap_addr))) {
  st->dma_flags = 0;
  st->unmap_len = skb_frag_size(frag);
  st->in_len = skb_frag_size(frag);
  st->dma_addr = st->unmap_addr;
  return 0;
 }
 return -ENOMEM;
}
