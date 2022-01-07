
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* hdr_addr; void* pkt_addr; } ;
union e1000_adv_rx_desc {TYPE_1__ read; } ;
struct sk_buff {int data; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct igbvf_ring {unsigned int next_to_use; unsigned int count; scalar_t__ tail; struct igbvf_buffer* buffer_info; struct igbvf_adapter* adapter; } ;
struct igbvf_buffer {int page_offset; scalar_t__ dma; scalar_t__ page_dma; struct sk_buff* skb; int * page; } ;
struct TYPE_4__ {scalar_t__ hw_addr; } ;
struct igbvf_adapter {int rx_ps_hdr_size; int rx_buffer_len; TYPE_2__ hw; int alloc_rx_buff_failed; struct pci_dev* pdev; struct net_device* netdev; } ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 union e1000_adv_rx_desc* IGBVF_RX_DESC_ADV (struct igbvf_ring,unsigned int) ;
 int PAGE_SIZE ;
 int __free_page (int *) ;
 int * alloc_page (int ) ;
 void* cpu_to_le64 (scalar_t__) ;
 int dev_err (int *,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dma_map_page (int *,int *,int,int,int ) ;
 scalar_t__ dma_map_single (int *,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 int wmb () ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void igbvf_alloc_rx_buffers(struct igbvf_ring *rx_ring,
                                   int cleaned_count)
{
 struct igbvf_adapter *adapter = rx_ring->adapter;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 union e1000_adv_rx_desc *rx_desc;
 struct igbvf_buffer *buffer_info;
 struct sk_buff *skb;
 unsigned int i;
 int bufsz;

 i = rx_ring->next_to_use;
 buffer_info = &rx_ring->buffer_info[i];

 if (adapter->rx_ps_hdr_size)
  bufsz = adapter->rx_ps_hdr_size;
 else
  bufsz = adapter->rx_buffer_len;

 while (cleaned_count--) {
  rx_desc = IGBVF_RX_DESC_ADV(*rx_ring, i);

  if (adapter->rx_ps_hdr_size && !buffer_info->page_dma) {
   if (!buffer_info->page) {
    buffer_info->page = alloc_page(GFP_ATOMIC);
    if (!buffer_info->page) {
     adapter->alloc_rx_buff_failed++;
     goto no_buffers;
    }
    buffer_info->page_offset = 0;
   } else {
    buffer_info->page_offset ^= PAGE_SIZE / 2;
   }
   buffer_info->page_dma =
    dma_map_page(&pdev->dev, buffer_info->page,
                 buffer_info->page_offset,
                 PAGE_SIZE / 2,
          DMA_FROM_DEVICE);
   if (dma_mapping_error(&pdev->dev,
           buffer_info->page_dma)) {
    __free_page(buffer_info->page);
    buffer_info->page = ((void*)0);
    dev_err(&pdev->dev, "RX DMA map failed\n");
    break;
   }
  }

  if (!buffer_info->skb) {
   skb = netdev_alloc_skb_ip_align(netdev, bufsz);
   if (!skb) {
    adapter->alloc_rx_buff_failed++;
    goto no_buffers;
   }

   buffer_info->skb = skb;
   buffer_info->dma = dma_map_single(&pdev->dev, skb->data,
                                     bufsz,
         DMA_FROM_DEVICE);
   if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
    dev_kfree_skb(buffer_info->skb);
    buffer_info->skb = ((void*)0);
    dev_err(&pdev->dev, "RX DMA map failed\n");
    goto no_buffers;
   }
  }


  if (adapter->rx_ps_hdr_size) {
   rx_desc->read.pkt_addr =
        cpu_to_le64(buffer_info->page_dma);
   rx_desc->read.hdr_addr = cpu_to_le64(buffer_info->dma);
  } else {
   rx_desc->read.pkt_addr =
        cpu_to_le64(buffer_info->dma);
   rx_desc->read.hdr_addr = 0;
  }

  i++;
  if (i == rx_ring->count)
   i = 0;
  buffer_info = &rx_ring->buffer_info[i];
 }

no_buffers:
 if (rx_ring->next_to_use != i) {
  rx_ring->next_to_use = i;
  if (i == 0)
   i = (rx_ring->count - 1);
  else
   i--;





  wmb();
  writel(i, adapter->hw.hw_addr + rx_ring->tail);
 }
}
