
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct skge_rx_desc {int dma_lo; int dma_hi; unsigned int control; scalar_t__ csum2; scalar_t__ csum1; void* csum2_start; void* csum1_start; } ;
struct skge_port {TYPE_1__* hw; } ;
struct skge_element {struct sk_buff* skb; struct skge_rx_desc* desc; } ;
struct sk_buff {int data; } ;
struct TYPE_2__ {int pdev; } ;


 unsigned int BMU_IRQ_EOF ;
 unsigned int BMU_OWN ;
 unsigned int BMU_STF ;
 unsigned int BMU_TCP_CHECK ;
 void* ETH_HLEN ;
 int PCI_DMA_FROMDEVICE ;
 int mapaddr ;
 int maplen ;
 int pci_map_single (int ,int ,unsigned int,int ) ;
 int pci_unmap_addr_set (struct skge_element*,int ,int) ;
 int pci_unmap_len_set (struct skge_element*,int ,unsigned int) ;
 int wmb () ;

__attribute__((used)) static void skge_rx_setup(struct skge_port *skge, struct skge_element *e,
     struct sk_buff *skb, unsigned int bufsize)
{
 struct skge_rx_desc *rd = e->desc;
 u64 map;

 map = pci_map_single(skge->hw->pdev, skb->data, bufsize,
        PCI_DMA_FROMDEVICE);

 rd->dma_lo = map;
 rd->dma_hi = map >> 32;
 e->skb = skb;
 rd->csum1_start = ETH_HLEN;
 rd->csum2_start = ETH_HLEN;
 rd->csum1 = 0;
 rd->csum2 = 0;

 wmb();

 rd->control = BMU_OWN | BMU_STF | BMU_IRQ_EOF | BMU_TCP_CHECK | bufsize;
 pci_unmap_addr_set(e, mapaddr, map);
 pci_unmap_len_set(e, maplen, bufsize);
}
