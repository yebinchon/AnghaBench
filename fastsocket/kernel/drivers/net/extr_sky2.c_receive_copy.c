
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sky2_port {TYPE_1__* hw; int netdev; } ;
struct sk_buff {int csum; int ip_summed; int data; } ;
struct rx_ring_info {TYPE_2__* skb; int data_addr; } ;
struct TYPE_4__ {int ip_summed; int csum; } ;
struct TYPE_3__ {int pdev; } ;


 int CHECKSUM_NONE ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ likely (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 int pci_dma_sync_single_for_cpu (int ,int ,unsigned int,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,unsigned int,int ) ;
 int skb_copy_from_linear_data (TYPE_2__*,int ,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *receive_copy(struct sky2_port *sky2,
        const struct rx_ring_info *re,
        unsigned length)
{
 struct sk_buff *skb;

 skb = netdev_alloc_skb(sky2->netdev, length + 2);
 if (likely(skb)) {
  skb_reserve(skb, 2);
  pci_dma_sync_single_for_cpu(sky2->hw->pdev, re->data_addr,
         length, PCI_DMA_FROMDEVICE);
  skb_copy_from_linear_data(re->skb, skb->data, length);
  skb->ip_summed = re->skb->ip_summed;
  skb->csum = re->skb->csum;
  pci_dma_sync_single_for_device(sky2->hw->pdev, re->data_addr,
            length, PCI_DMA_FROMDEVICE);
  re->skb->ip_summed = CHECKSUM_NONE;
  skb_put(skb, length);
 }
 return skb;
}
