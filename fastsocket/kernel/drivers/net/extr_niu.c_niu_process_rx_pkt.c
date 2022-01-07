
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
typedef size_t u32 ;
struct sk_buff {int len; int protocol; int ip_summed; } ;
struct rx_ring_info {unsigned int rcr_index; size_t* rbr_sizes; size_t rbr_block_size; int rx_bytes; int rx_channel; int rx_packets; int rbr_refill_pending; int * rcr; } ;
struct page {size_t index; int * mapping; } ;
struct niu {int dev; int device; TYPE_1__* ops; } ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int (* unmap_page ) (int ,size_t,int ,int ) ;} ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 scalar_t__ ETH_FCS_LEN ;
 int NET_IP_ALIGN ;
 unsigned int NEXT_RCR (struct rx_ring_info*,unsigned int) ;
 size_t PAGE_MASK ;
 int PAGE_SIZE ;
 size_t RCR_ENTRY_ERROR ;
 size_t RCR_ENTRY_L2_LEN ;
 size_t RCR_ENTRY_L2_LEN_SHIFT ;
 size_t RCR_ENTRY_MULTI ;
 size_t RCR_ENTRY_NOPORT ;
 size_t RCR_ENTRY_PKTBUFSZ ;
 size_t RCR_ENTRY_PKTBUFSZ_SHIFT ;
 size_t RCR_ENTRY_PKT_BUF_ADDR ;
 size_t RCR_ENTRY_PKT_BUF_ADDR_SHIFT ;
 size_t RCR_ENTRY_PKT_TYPE_SHIFT ;
 int RCR_PKT_TYPE_TCP ;
 int RCR_PKT_TYPE_UDP ;
 int RX_SKB_ALLOC_SIZE ;
 int VLAN_ETH_HLEN ;
 int __pskb_pull_tail (struct sk_buff*,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int get_page (struct page*) ;
 size_t le64_to_cpup (int *) ;
 int min (int,int ) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 struct page* niu_find_rxpage (struct rx_ring_info*,size_t,struct page***) ;
 int niu_rx_pkt_ignore (struct niu*,struct rx_ring_info*) ;
 int niu_rx_skb_append (struct sk_buff*,struct page*,size_t,size_t) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int stub1 (int ,size_t,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int niu_process_rx_pkt(struct napi_struct *napi, struct niu *np,
         struct rx_ring_info *rp)
{
 unsigned int index = rp->rcr_index;
 struct sk_buff *skb;
 int len, num_rcr;

 skb = netdev_alloc_skb(np->dev, RX_SKB_ALLOC_SIZE);
 if (unlikely(!skb))
  return niu_rx_pkt_ignore(np, rp);

 num_rcr = 0;
 while (1) {
  struct page *page, **link;
  u32 rcr_size, append_size;
  u64 addr, val, off;

  num_rcr++;

  val = le64_to_cpup(&rp->rcr[index]);

  len = (val & RCR_ENTRY_L2_LEN) >>
   RCR_ENTRY_L2_LEN_SHIFT;
  len -= ETH_FCS_LEN;

  addr = (val & RCR_ENTRY_PKT_BUF_ADDR) <<
   RCR_ENTRY_PKT_BUF_ADDR_SHIFT;
  page = niu_find_rxpage(rp, addr, &link);

  rcr_size = rp->rbr_sizes[(val & RCR_ENTRY_PKTBUFSZ) >>
      RCR_ENTRY_PKTBUFSZ_SHIFT];

  off = addr & ~PAGE_MASK;
  append_size = rcr_size;
  if (num_rcr == 1) {
   int ptype;

   off += 2;
   append_size -= 2;

   ptype = (val >> RCR_ENTRY_PKT_TYPE_SHIFT);
   if ((ptype == RCR_PKT_TYPE_TCP ||
        ptype == RCR_PKT_TYPE_UDP) &&
       !(val & (RCR_ENTRY_NOPORT |
         RCR_ENTRY_ERROR)))
    skb->ip_summed = CHECKSUM_UNNECESSARY;
   else
    skb->ip_summed = CHECKSUM_NONE;
  }
  if (!(val & RCR_ENTRY_MULTI))
   append_size = len - skb->len;

  niu_rx_skb_append(skb, page, off, append_size);
  if ((page->index + rp->rbr_block_size) - rcr_size == addr) {
   *link = (struct page *) page->mapping;
   np->ops->unmap_page(np->device, page->index,
         PAGE_SIZE, DMA_FROM_DEVICE);
   page->index = 0;
   page->mapping = ((void*)0);
   rp->rbr_refill_pending++;
  } else
   get_page(page);

  index = NEXT_RCR(rp, index);
  if (!(val & RCR_ENTRY_MULTI))
   break;

 }
 rp->rcr_index = index;

 skb_reserve(skb, NET_IP_ALIGN);
 __pskb_pull_tail(skb, min(len, VLAN_ETH_HLEN));

 rp->rx_packets++;
 rp->rx_bytes += skb->len;

 skb->protocol = eth_type_trans(skb, np->dev);
 skb_record_rx_queue(skb, rp->rx_channel);
 napi_gro_receive(napi, skb);

 return num_rcr;
}
