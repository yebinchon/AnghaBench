
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int status_error; int vlan; int length; } ;
struct TYPE_8__ {int csum; } ;
struct TYPE_9__ {TYPE_1__ csum_ip; } ;
struct TYPE_10__ {TYPE_2__ hi_dword; } ;
struct TYPE_12__ {TYPE_4__ upper; TYPE_3__ lower; } ;
union e1000_rx_desc_extended {TYPE_5__ wb; } ;
typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct pci_dev {int dev; } ;
struct TYPE_13__ {unsigned int rx_bytes; unsigned int rx_packets; } ;
struct net_device {TYPE_6__ stats; } ;
struct e1000_ring {unsigned int next_to_clean; unsigned int count; struct sk_buff* rx_skb_top; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_buffer {int page; struct sk_buff* skb; scalar_t__ dma; } ;
struct e1000_adapter {unsigned int total_rx_bytes; unsigned int total_rx_packets; int (* alloc_rx_buf ) (struct e1000_ring*,int,int ) ;struct pci_dev* pdev; struct net_device* netdev; } ;
struct TYPE_14__ {int nr_frags; } ;


 int DMA_FROM_DEVICE ;
 int E1000_RXDEXT_ERR_FRAME_ERR_MASK ;
 int E1000_RXD_STAT_DD ;
 int E1000_RXD_STAT_EOP ;
 int E1000_RX_BUFFER_WRITE ;
 union e1000_rx_desc_extended* E1000_RX_DESC_EXT (struct e1000_ring,unsigned int) ;
 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int KM_SKB_DATA_SOFTIRQ ;
 int PAGE_SIZE ;
 int copybreak ;
 int cpu_to_le32 (int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_page (int *,scalar_t__,int ,int ) ;
 int e1000_consume_page (struct e1000_buffer*,struct sk_buff*,int) ;
 int e1000_desc_unused (struct e1000_ring*) ;
 int e1000_receive_skb (struct e1000_adapter*,struct net_device*,struct sk_buff*,int,int ) ;
 int e1000_rx_checksum (struct e1000_adapter*,int,int,struct sk_buff*) ;
 int e_err (char*) ;
 int * kmap_atomic (int ,int ) ;
 int kunmap_atomic (int *,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int *,int) ;
 int prefetch (union e1000_rx_desc_extended*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int rmb () ;
 struct sk_buff* rxtop ;
 int skb_fill_page_desc (struct sk_buff*,int ,int ,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 TYPE_7__* skb_shinfo (struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 int stub1 (struct e1000_ring*,int,int ) ;
 int stub2 (struct e1000_ring*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool e1000_clean_jumbo_rx_irq(struct e1000_ring *rx_ring, int *work_done,
         int work_to_do)
{
 struct e1000_adapter *adapter = rx_ring->adapter;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 union e1000_rx_desc_extended *rx_desc, *next_rxd;
 struct e1000_buffer *buffer_info, *next_buffer;
 u32 length, staterr;
 unsigned int i;
 int cleaned_count = 0;
 bool cleaned = 0;
 unsigned int total_rx_bytes = 0, total_rx_packets = 0;

 i = rx_ring->next_to_clean;
 rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
 staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
 buffer_info = &rx_ring->buffer_info[i];

 while (staterr & E1000_RXD_STAT_DD) {
  struct sk_buff *skb;

  if (*work_done >= work_to_do)
   break;
  (*work_done)++;
  rmb();

  skb = buffer_info->skb;
  buffer_info->skb = ((void*)0);

  ++i;
  if (i == rx_ring->count)
   i = 0;
  next_rxd = E1000_RX_DESC_EXT(*rx_ring, i);
  prefetch(next_rxd);

  next_buffer = &rx_ring->buffer_info[i];

  cleaned = 1;
  cleaned_count++;
  dma_unmap_page(&pdev->dev, buffer_info->dma, PAGE_SIZE,
          DMA_FROM_DEVICE);
  buffer_info->dma = 0;

  length = le16_to_cpu(rx_desc->wb.upper.length);


  if (unlikely((staterr & E1000_RXD_STAT_EOP) &&
        (staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK))) {

   buffer_info->skb = skb;

   if (rx_ring->rx_skb_top)
    dev_kfree_skb_irq(rx_ring->rx_skb_top);
   rx_ring->rx_skb_top = ((void*)0);
   goto next_desc;
  }

  if (!(staterr & E1000_RXD_STAT_EOP)) {

   if (!(rx_ring->rx_skb_top)) {

    (rx_ring->rx_skb_top) = skb;
    skb_fill_page_desc((rx_ring->rx_skb_top), 0, buffer_info->page,
         0, length);
   } else {

    skb_fill_page_desc((rx_ring->rx_skb_top),
        skb_shinfo((rx_ring->rx_skb_top))->nr_frags,
        buffer_info->page, 0, length);

    buffer_info->skb = skb;
   }
   e1000_consume_page(buffer_info, (rx_ring->rx_skb_top), length);
   goto next_desc;
  } else {
   if ((rx_ring->rx_skb_top)) {

    skb_fill_page_desc((rx_ring->rx_skb_top),
        skb_shinfo((rx_ring->rx_skb_top))->nr_frags,
        buffer_info->page, 0, length);



    buffer_info->skb = skb;
    skb = (rx_ring->rx_skb_top);
    (rx_ring->rx_skb_top) = ((void*)0);
    e1000_consume_page(buffer_info, skb, length);
   } else {



    if (length <= copybreak &&
        skb_tailroom(skb) >= length) {
     u8 *vaddr;
     vaddr = kmap_atomic(buffer_info->page,
                        KM_SKB_DATA_SOFTIRQ);
     memcpy(skb_tail_pointer(skb), vaddr,
            length);
     kunmap_atomic(vaddr,
                   KM_SKB_DATA_SOFTIRQ);



     skb_put(skb, length);
    } else {
     skb_fill_page_desc(skb, 0,
          buffer_info->page, 0,
          length);
     e1000_consume_page(buffer_info, skb,
          length);
    }
   }
  }


  e1000_rx_checksum(adapter, staterr,
      le16_to_cpu(rx_desc->wb.lower.hi_dword.
           csum_ip.csum), skb);


  total_rx_bytes += skb->len;
  total_rx_packets++;


  if (!pskb_may_pull(skb, ETH_HLEN)) {
   e_err("pskb_may_pull failed.\n");
   dev_kfree_skb_irq(skb);
   goto next_desc;
  }

  e1000_receive_skb(adapter, netdev, skb, staterr,
      rx_desc->wb.upper.vlan);

next_desc:
  rx_desc->wb.upper.status_error &= cpu_to_le32(~0xFF);


  if (unlikely(cleaned_count >= E1000_RX_BUFFER_WRITE)) {
   adapter->alloc_rx_buf(rx_ring, cleaned_count,
           GFP_ATOMIC);
   cleaned_count = 0;
  }


  rx_desc = next_rxd;
  buffer_info = next_buffer;

  staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
 }
 rx_ring->next_to_clean = i;

 cleaned_count = e1000_desc_unused(rx_ring);
 if (cleaned_count)
  adapter->alloc_rx_buf(rx_ring, cleaned_count, GFP_ATOMIC);

 adapter->total_rx_bytes += total_rx_bytes;
 adapter->total_rx_packets += total_rx_packets;
 netdev->stats.rx_bytes += total_rx_bytes;
 netdev->stats.rx_packets += total_rx_packets;
 return cleaned;
}
