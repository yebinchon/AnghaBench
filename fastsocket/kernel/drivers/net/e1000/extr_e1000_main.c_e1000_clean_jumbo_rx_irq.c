
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int* data; scalar_t__ len; } ;
struct pci_dev {int dev; } ;
struct TYPE_3__ {unsigned int rx_bytes; unsigned int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct e1000_rx_ring {unsigned int next_to_clean; unsigned int count; struct sk_buff* rx_skb_top; struct e1000_buffer* buffer_info; } ;
struct e1000_rx_desc {int status; int errors; int special; int csum; int length; } ;
struct e1000_hw {int dummy; } ;
struct e1000_buffer {int page; struct sk_buff* skb; scalar_t__ dma; int length; } ;
struct e1000_adapter {unsigned int total_rx_packets; unsigned int total_rx_bytes; int (* alloc_rx_buf ) (struct e1000_adapter*,struct e1000_rx_ring*,int) ;int stats_lock; int stats; struct pci_dev* pdev; struct net_device* netdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int nr_frags; } ;


 int DMA_FROM_DEVICE ;
 int E1000_DESC_UNUSED (struct e1000_rx_ring*) ;
 int E1000_RXD_ERR_FRAME_ERR_MASK ;
 int E1000_RXD_STAT_DD ;
 int E1000_RXD_STAT_EOP ;
 int E1000_RX_BUFFER_WRITE ;
 struct e1000_rx_desc* E1000_RX_DESC (struct e1000_rx_ring,unsigned int) ;
 int ETH_HLEN ;
 int KM_SKB_DATA_SOFTIRQ ;
 scalar_t__ TBI_ACCEPT (struct e1000_hw*,int,int,int,int) ;
 int copybreak ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_page (int *,scalar_t__,int ,int ) ;
 int drv ;
 int e1000_consume_page (struct e1000_buffer*,struct sk_buff*,int) ;
 int e1000_receive_skb (struct e1000_adapter*,int,int ,struct sk_buff*) ;
 int e1000_rx_checksum (struct e1000_adapter*,int,int,struct sk_buff*) ;
 int e1000_tbi_adjust_stats (struct e1000_hw*,int *,int,int*) ;
 int e_err (int ,char*) ;
 int* kmap_atomic (int ,int ) ;
 int kunmap_atomic (int*,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int*,int) ;
 int prefetch (struct e1000_rx_desc*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int pskb_trim (struct sk_buff*,scalar_t__) ;
 int rmb () ;
 struct sk_buff* rxtop ;
 int skb_fill_page_desc (struct sk_buff*,int ,int ,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct e1000_adapter*,struct e1000_rx_ring*,int) ;
 int stub2 (struct e1000_adapter*,struct e1000_rx_ring*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool e1000_clean_jumbo_rx_irq(struct e1000_adapter *adapter,
         struct e1000_rx_ring *rx_ring,
         int *work_done, int work_to_do)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_rx_desc *rx_desc, *next_rxd;
 struct e1000_buffer *buffer_info, *next_buffer;
 unsigned long irq_flags;
 u32 length;
 unsigned int i;
 int cleaned_count = 0;
 bool cleaned = 0;
 unsigned int total_rx_bytes=0, total_rx_packets=0;

 i = rx_ring->next_to_clean;
 rx_desc = E1000_RX_DESC(*rx_ring, i);
 buffer_info = &rx_ring->buffer_info[i];

 while (rx_desc->status & E1000_RXD_STAT_DD) {
  struct sk_buff *skb;
  u8 status;

  if (*work_done >= work_to_do)
   break;
  (*work_done)++;
  rmb();

  status = rx_desc->status;
  skb = buffer_info->skb;
  buffer_info->skb = ((void*)0);

  if (++i == rx_ring->count) i = 0;
  next_rxd = E1000_RX_DESC(*rx_ring, i);
  prefetch(next_rxd);

  next_buffer = &rx_ring->buffer_info[i];

  cleaned = 1;
  cleaned_count++;
  dma_unmap_page(&pdev->dev, buffer_info->dma,
          buffer_info->length, DMA_FROM_DEVICE);
  buffer_info->dma = 0;

  length = le16_to_cpu(rx_desc->length);


  if (unlikely((status & E1000_RXD_STAT_EOP) &&
      (rx_desc->errors & E1000_RXD_ERR_FRAME_ERR_MASK))) {
   u8 last_byte = *(skb->data + length - 1);
   if (TBI_ACCEPT(hw, status, rx_desc->errors, length,
           last_byte)) {
    spin_lock_irqsave(&adapter->stats_lock,
                      irq_flags);
    e1000_tbi_adjust_stats(hw, &adapter->stats,
                           length, skb->data);
    spin_unlock_irqrestore(&adapter->stats_lock,
                           irq_flags);
    length--;
   } else {

    buffer_info->skb = skb;


    if (rx_ring->rx_skb_top)
     dev_kfree_skb(rx_ring->rx_skb_top);
    rx_ring->rx_skb_top = ((void*)0);
    goto next_desc;
   }
  }


  if (!(status & E1000_RXD_STAT_EOP)) {

   if (!rx_ring->rx_skb_top) {

    rx_ring->rx_skb_top = skb;
    skb_fill_page_desc(rx_ring->rx_skb_top, 0, buffer_info->page,
                       0, length);
   } else {

    skb_fill_page_desc(rx_ring->rx_skb_top,
        skb_shinfo(rx_ring->rx_skb_top)->nr_frags,
        buffer_info->page, 0, length);

    buffer_info->skb = skb;
   }
   e1000_consume_page(buffer_info, rx_ring->rx_skb_top, length);
   goto next_desc;
  } else {
   if (rx_ring->rx_skb_top) {

    skb_fill_page_desc(rx_ring->rx_skb_top,
        skb_shinfo(rx_ring->rx_skb_top)->nr_frags,
        buffer_info->page, 0, length);


    buffer_info->skb = skb;
    skb = rx_ring->rx_skb_top;
    rx_ring->rx_skb_top = ((void*)0);
    e1000_consume_page(buffer_info, skb, length);
   } else {


    if (length <= copybreak &&
        skb_tailroom(skb) >= length) {
     u8 *vaddr;
     vaddr = kmap_atomic(buffer_info->page,
                         KM_SKB_DATA_SOFTIRQ);
     memcpy(skb_tail_pointer(skb), vaddr, length);
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


  e1000_rx_checksum(adapter,
                    (u32)(status) |
                    ((u32)(rx_desc->errors) << 24),
                    le16_to_cpu(rx_desc->csum), skb);

  pskb_trim(skb, skb->len - 4);


  total_rx_bytes += skb->len;
  total_rx_packets++;


  if (!pskb_may_pull(skb, ETH_HLEN)) {
   e_err(drv, "pskb_may_pull failed.\n");
   dev_kfree_skb(skb);
   goto next_desc;
  }

  e1000_receive_skb(adapter, status, rx_desc->special, skb);

next_desc:
  rx_desc->status = 0;


  if (unlikely(cleaned_count >= E1000_RX_BUFFER_WRITE)) {
   adapter->alloc_rx_buf(adapter, rx_ring, cleaned_count);
   cleaned_count = 0;
  }


  rx_desc = next_rxd;
  buffer_info = next_buffer;
 }
 rx_ring->next_to_clean = i;

 cleaned_count = E1000_DESC_UNUSED(rx_ring);
 if (cleaned_count)
  adapter->alloc_rx_buf(adapter, rx_ring, cleaned_count);

 adapter->total_rx_packets += total_rx_packets;
 adapter->total_rx_bytes += total_rx_bytes;
 netdev->stats.rx_bytes += total_rx_bytes;
 netdev->stats.rx_packets += total_rx_packets;
 return cleaned;
}
