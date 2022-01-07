
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; scalar_t__ protocol; int* data; void* csum; } ;
struct pch_gbe_tx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ dma; struct pch_gbe_buffer* buffer_info; } ;
struct pch_gbe_tx_desc {size_t length; size_t tx_words_eob; unsigned int tx_frame_ctrl; int gbec_status; scalar_t__ buffer_addr; } ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_buffer {size_t length; int mapped; scalar_t__ dma; scalar_t__ time_stamp; struct sk_buff* skb; } ;
struct pch_gbe_adapter {TYPE_1__* pdev; struct pch_gbe_hw hw; } ;
struct iphdr {scalar_t__ protocol; int daddr; int saddr; int ihl; scalar_t__ check; } ;
struct TYPE_8__ {void* check; } ;
struct TYPE_7__ {void* check; } ;
struct TYPE_6__ {int TX_DSC_SW_P; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ CHECKSUM_NONE ;
 int DMA_TO_DEVICE ;
 int DSC_INIT16 ;
 size_t ETH_HLEN ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ PCH_GBE_SHORT_PKT ;
 unsigned int PCH_GBE_TXD_CTRL_APAD ;
 unsigned int PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF ;
 struct pch_gbe_tx_desc* PCH_GBE_TX_DESC (struct pch_gbe_tx_ring,unsigned int) ;
 void* csum_tcpudp_magic (int ,int ,scalar_t__,scalar_t__,void*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ dma_map_single (int *,int*,size_t,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 scalar_t__ htons (int ) ;
 int iowrite32 (scalar_t__,int *) ;
 scalar_t__ ip_fast_csum (int *,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int memcpy (int*,int*,size_t) ;
 int pr_err (char*) ;
 void* skb_checksum (struct sk_buff*,unsigned int,scalar_t__,int ) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 TYPE_4__* tcp_hdr (struct sk_buff*) ;
 TYPE_3__* udp_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pch_gbe_tx_queue(struct pch_gbe_adapter *adapter,
         struct pch_gbe_tx_ring *tx_ring,
         struct sk_buff *skb)
{
 struct pch_gbe_hw *hw = &adapter->hw;
 struct pch_gbe_tx_desc *tx_desc;
 struct pch_gbe_buffer *buffer_info;
 struct sk_buff *tmp_skb;
 unsigned int frame_ctrl;
 unsigned int ring_num;


 frame_ctrl = 0;
 if (unlikely(skb->len < PCH_GBE_SHORT_PKT))
  frame_ctrl |= PCH_GBE_TXD_CTRL_APAD;
 if (skb->ip_summed == CHECKSUM_NONE)
  frame_ctrl |= PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF;






 if (skb->len < PCH_GBE_SHORT_PKT && skb->ip_summed != CHECKSUM_NONE) {
  frame_ctrl |= PCH_GBE_TXD_CTRL_APAD |
         PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF;
  if (skb->protocol == htons(ETH_P_IP)) {
   struct iphdr *iph = ip_hdr(skb);
   unsigned int offset;
   iph->check = 0;
   iph->check = ip_fast_csum((u8 *) iph, iph->ihl);
   offset = skb_transport_offset(skb);
   if (iph->protocol == IPPROTO_TCP) {
    skb->csum = 0;
    tcp_hdr(skb)->check = 0;
    skb->csum = skb_checksum(skb, offset,
        skb->len - offset, 0);
    tcp_hdr(skb)->check =
     csum_tcpudp_magic(iph->saddr,
         iph->daddr,
         skb->len - offset,
         IPPROTO_TCP,
         skb->csum);
   } else if (iph->protocol == IPPROTO_UDP) {
    skb->csum = 0;
    udp_hdr(skb)->check = 0;
    skb->csum =
     skb_checksum(skb, offset,
           skb->len - offset, 0);
    udp_hdr(skb)->check =
     csum_tcpudp_magic(iph->saddr,
         iph->daddr,
         skb->len - offset,
         IPPROTO_UDP,
         skb->csum);
   }
  }
 }

 ring_num = tx_ring->next_to_use;
 if (unlikely((ring_num + 1) == tx_ring->count))
  tx_ring->next_to_use = 0;
 else
  tx_ring->next_to_use = ring_num + 1;


 buffer_info = &tx_ring->buffer_info[ring_num];
 tmp_skb = buffer_info->skb;


 memcpy(tmp_skb->data, skb->data, ETH_HLEN);
 tmp_skb->data[ETH_HLEN] = 0x00;
 tmp_skb->data[ETH_HLEN + 1] = 0x00;
 tmp_skb->len = skb->len;
 memcpy(&tmp_skb->data[ETH_HLEN + 2], &skb->data[ETH_HLEN],
        (skb->len - ETH_HLEN));

 buffer_info->length = tmp_skb->len;
 buffer_info->dma = dma_map_single(&adapter->pdev->dev, tmp_skb->data,
       buffer_info->length,
       DMA_TO_DEVICE);
 if (dma_mapping_error(&adapter->pdev->dev, buffer_info->dma)) {
  pr_err("TX DMA map failed\n");
  buffer_info->dma = 0;
  buffer_info->time_stamp = 0;
  tx_ring->next_to_use = ring_num;
  return;
 }
 buffer_info->mapped = 1;
 buffer_info->time_stamp = jiffies;


 tx_desc = PCH_GBE_TX_DESC(*tx_ring, ring_num);
 tx_desc->buffer_addr = (buffer_info->dma);
 tx_desc->length = (tmp_skb->len);
 tx_desc->tx_words_eob = ((tmp_skb->len + 3));
 tx_desc->tx_frame_ctrl = (frame_ctrl);
 tx_desc->gbec_status = (DSC_INIT16);

 if (unlikely(++ring_num == tx_ring->count))
  ring_num = 0;


 iowrite32(tx_ring->dma +
    (int)sizeof(struct pch_gbe_tx_desc) * ring_num,
    &hw->reg->TX_DSC_SW_P);
 dev_kfree_skb_any(skb);
}
