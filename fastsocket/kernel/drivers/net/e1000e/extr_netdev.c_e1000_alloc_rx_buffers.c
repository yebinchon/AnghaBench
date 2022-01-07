
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer_addr; } ;
union e1000_rx_desc_extended {TYPE_1__ read; } ;
struct sk_buff {int data; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct e1000_ring {unsigned int next_to_use; unsigned int count; struct e1000_buffer* buffer_info; int tail; struct e1000_adapter* adapter; } ;
struct e1000_buffer {int dma; struct sk_buff* skb; } ;
struct e1000_adapter {unsigned int rx_buffer_len; int flags2; int rx_dma_failed; int alloc_rx_buff_failed; struct pci_dev* pdev; struct net_device* netdev; } ;
typedef int gfp_t ;


 int DMA_FROM_DEVICE ;
 int E1000_RX_BUFFER_WRITE ;
 union e1000_rx_desc_extended* E1000_RX_DESC_EXT (struct e1000_ring,unsigned int) ;
 int FLAG2_PCIM2PCI_ARBITER_WA ;
 struct sk_buff* __netdev_alloc_skb_ip_align (struct net_device*,unsigned int,int ) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int *,char*) ;
 int dma_map_single (int *,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int e1000e_update_rdt_wa (struct e1000_ring*,unsigned int) ;
 int skb_trim (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
       int cleaned_count, gfp_t gfp)
{
 struct e1000_adapter *adapter = rx_ring->adapter;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 union e1000_rx_desc_extended *rx_desc;
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

  skb = __netdev_alloc_skb_ip_align(netdev, bufsz, gfp);
  if (!skb) {

   adapter->alloc_rx_buff_failed++;
   break;
  }

  buffer_info->skb = skb;
map_skb:
  buffer_info->dma = dma_map_single(&pdev->dev, skb->data,
        adapter->rx_buffer_len,
        DMA_FROM_DEVICE);
  if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
   dev_err(&pdev->dev, "Rx DMA map failed\n");
   adapter->rx_dma_failed++;
   break;
  }

  rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
  rx_desc->read.buffer_addr = cpu_to_le64(buffer_info->dma);

  if (unlikely(!(i & (E1000_RX_BUFFER_WRITE - 1)))) {





   wmb();
   if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
    e1000e_update_rdt_wa(rx_ring, i);
   else
    writel(i, rx_ring->tail);
  }
  i++;
  if (i == rx_ring->count)
   i = 0;
  buffer_info = &rx_ring->buffer_info[i];
 }

 rx_ring->next_to_use = i;
}
