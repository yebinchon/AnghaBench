
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {void* data; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct e1000_rx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ rdt; struct e1000_buffer* buffer_info; } ;
struct e1000_rx_desc {int buffer_addr; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_buffer {unsigned int length; scalar_t__ dma; struct sk_buff* skb; } ;
struct e1000_adapter {unsigned int rx_buffer_len; int alloc_rx_buff_failed; struct pci_dev* pdev; struct net_device* netdev; struct e1000_hw hw; } ;


 int DMA_FROM_DEVICE ;
 struct e1000_rx_desc* E1000_RX_DESC (struct e1000_rx_ring,unsigned int) ;
 int cpu_to_le64 (scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dma_map_single (int *,void*,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int dma_unmap_single (int *,scalar_t__,unsigned int,int ) ;
 int e1000_check_64k_bound (struct e1000_adapter*,void*,unsigned int) ;
 int e_err (int ,char*,unsigned int,void*) ;
 scalar_t__ likely (int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,unsigned int) ;
 int rx_err ;
 int skb_trim (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void e1000_alloc_rx_buffers(struct e1000_adapter *adapter,
       struct e1000_rx_ring *rx_ring,
       int cleaned_count)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_rx_desc *rx_desc;
 struct e1000_buffer *buffer_info;
 struct sk_buff *skb;
 unsigned int i;
 unsigned int bufsz = adapter->rx_buffer_len;

 i = rx_ring->next_to_use;
 buffer_info = &rx_ring->buffer_info[i];

 while (cleaned_count--) {
  skb = buffer_info->skb;
  if (skb) {
   skb_trim(skb, 0);
   goto map_skb;
  }

  skb = netdev_alloc_skb_ip_align(netdev, bufsz);
  if (unlikely(!skb)) {

   adapter->alloc_rx_buff_failed++;
   break;
  }


  if (!e1000_check_64k_bound(adapter, skb->data, bufsz)) {
   struct sk_buff *oldskb = skb;
   e_err(rx_err, "skb align check failed: %u bytes at "
         "%p\n", bufsz, skb->data);

   skb = netdev_alloc_skb_ip_align(netdev, bufsz);

   if (!skb) {
    dev_kfree_skb(oldskb);
    adapter->alloc_rx_buff_failed++;
    break;
   }

   if (!e1000_check_64k_bound(adapter, skb->data, bufsz)) {

    dev_kfree_skb(skb);
    dev_kfree_skb(oldskb);
    adapter->alloc_rx_buff_failed++;
    break;
   }


   dev_kfree_skb(oldskb);
  }
  buffer_info->skb = skb;
  buffer_info->length = adapter->rx_buffer_len;
map_skb:
  buffer_info->dma = dma_map_single(&pdev->dev,
        skb->data,
        buffer_info->length,
        DMA_FROM_DEVICE);
  if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
   dev_kfree_skb(skb);
   buffer_info->skb = ((void*)0);
   buffer_info->dma = 0;
   adapter->alloc_rx_buff_failed++;
   break;
  }







  if (!e1000_check_64k_bound(adapter,
     (void *)(unsigned long)buffer_info->dma,
     adapter->rx_buffer_len)) {
   e_err(rx_err, "dma align check failed: %u bytes at "
         "%p\n", adapter->rx_buffer_len,
         (void *)(unsigned long)buffer_info->dma);
   dev_kfree_skb(skb);
   buffer_info->skb = ((void*)0);

   dma_unmap_single(&pdev->dev, buffer_info->dma,
      adapter->rx_buffer_len,
      DMA_FROM_DEVICE);
   buffer_info->dma = 0;

   adapter->alloc_rx_buff_failed++;
   break;
  }
  rx_desc = E1000_RX_DESC(*rx_ring, i);
  rx_desc->buffer_addr = cpu_to_le64(buffer_info->dma);

  if (unlikely(++i == rx_ring->count))
   i = 0;
  buffer_info = &rx_ring->buffer_info[i];
 }

 if (likely(rx_ring->next_to_use != i)) {
  rx_ring->next_to_use = i;
  if (unlikely(i-- == 0))
   i = (rx_ring->count - 1);





  wmb();
  writel(i, hw->hw_addr + rx_ring->rdt);
 }
}
