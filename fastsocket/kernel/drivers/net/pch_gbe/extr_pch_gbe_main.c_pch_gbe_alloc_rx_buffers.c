
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pci_dev {int dev; } ;
struct pch_gbe_rx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ dma; struct pch_gbe_buffer* buffer_info; } ;
struct pch_gbe_rx_desc {int gbec_status; scalar_t__ buffer_addr; } ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_buffer {int mapped; int length; scalar_t__ dma; struct sk_buff* skb; int rx_buffer; } ;
struct TYPE_3__ {int rx_alloc_buff_failed; } ;
struct pch_gbe_adapter {unsigned int rx_buffer_len; TYPE_1__ stats; struct pci_dev* pdev; struct pch_gbe_hw hw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int RX_DSC_SW_P; } ;


 int DMA_FROM_DEVICE ;
 int DSC_INIT16 ;
 unsigned int PCH_GBE_DMA_ALIGN ;
 struct pch_gbe_rx_desc* PCH_GBE_RX_DESC (struct pch_gbe_rx_ring,unsigned int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dma_map_single (int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int iowrite32 (scalar_t__,int *) ;
 scalar_t__ likely (int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,unsigned int) ;
 int pr_debug (char*,unsigned int,unsigned long long,int ) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
pch_gbe_alloc_rx_buffers(struct pch_gbe_adapter *adapter,
    struct pch_gbe_rx_ring *rx_ring, int cleaned_count)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 struct pch_gbe_hw *hw = &adapter->hw;
 struct pch_gbe_rx_desc *rx_desc;
 struct pch_gbe_buffer *buffer_info;
 struct sk_buff *skb;
 unsigned int i;
 unsigned int bufsz;

 bufsz = adapter->rx_buffer_len + PCH_GBE_DMA_ALIGN;
 i = rx_ring->next_to_use;

 while ((cleaned_count--)) {
  buffer_info = &rx_ring->buffer_info[i];
  skb = netdev_alloc_skb(netdev, bufsz);
  if (unlikely(!skb)) {

   adapter->stats.rx_alloc_buff_failed++;
   break;
  }

  skb_reserve(skb, PCH_GBE_DMA_ALIGN);
  buffer_info->skb = skb;

  buffer_info->dma = dma_map_single(&pdev->dev,
        buffer_info->rx_buffer,
        buffer_info->length,
        DMA_FROM_DEVICE);
  if (dma_mapping_error(&adapter->pdev->dev, buffer_info->dma)) {
   dev_kfree_skb(skb);
   buffer_info->skb = ((void*)0);
   buffer_info->dma = 0;
   adapter->stats.rx_alloc_buff_failed++;
   break;
  }
  buffer_info->mapped = 1;
  rx_desc = PCH_GBE_RX_DESC(*rx_ring, i);
  rx_desc->buffer_addr = (buffer_info->dma);
  rx_desc->gbec_status = DSC_INIT16;

  pr_debug("i = %d  buffer_info->dma = 0x08%llx  buffer_info->length = 0x%x\n",
    i, (unsigned long long)buffer_info->dma,
    buffer_info->length);

  if (unlikely(++i == rx_ring->count))
   i = 0;
 }
 if (likely(rx_ring->next_to_use != i)) {
  rx_ring->next_to_use = i;
  if (unlikely(i-- == 0))
   i = (rx_ring->count - 1);
  iowrite32(rx_ring->dma +
     (int)sizeof(struct pch_gbe_rx_desc) * i,
     &hw->reg->RX_DSC_SW_P);
 }
 return;
}
