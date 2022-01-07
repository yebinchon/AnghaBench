
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int ip_summed; } ;
struct qlcnic_rx_buffer {struct sk_buff* skb; int dma; } ;
struct qlcnic_host_rds_ring {int dma_size; struct qlcnic_rx_buffer* rx_buf_arr; } ;
struct TYPE_2__ {int csummed; } ;
struct qlcnic_adapter {TYPE_1__ stats; scalar_t__ rx_csum; int pdev; } ;


 int CHECKSUM_UNNECESSARY ;
 int PCI_DMA_FROMDEVICE ;
 size_t STATUS_CKSUM_LOOP ;
 size_t STATUS_CKSUM_OK ;
 int WARN_ON (int) ;
 scalar_t__ likely (int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

struct sk_buff * qlcnic_process_rxbuf(struct qlcnic_adapter *adapter,
           struct qlcnic_host_rds_ring *ring,
           u16 index, u16 cksum)
{
 struct qlcnic_rx_buffer *buffer;
 struct sk_buff *skb;

 buffer = &ring->rx_buf_arr[index];

 if (unlikely(buffer->skb == ((void*)0))) {
  WARN_ON(1);
  return ((void*)0);
 }

 pci_unmap_single(adapter->pdev, buffer->dma, ring->dma_size,
    PCI_DMA_FROMDEVICE);

 skb = buffer->skb;
 if (likely(adapter->rx_csum &&
     (cksum == STATUS_CKSUM_OK || cksum == STATUS_CKSUM_LOOP))) {
  adapter->stats.csummed++;
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 } else {
  skb_checksum_none_assert(skb);
 }

 buffer->skb = ((void*)0);

 return skb;
}
