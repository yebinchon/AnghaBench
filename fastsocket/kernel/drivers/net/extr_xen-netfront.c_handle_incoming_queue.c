
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; int protocol; int data; } ;
struct page {int dummy; } ;
struct TYPE_6__ {int rx_bytes; int rx_packets; int rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_8__ {unsigned int offset; struct page* page; } ;
struct TYPE_7__ {TYPE_1__* frags; } ;
struct TYPE_5__ {struct page* page; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 TYPE_4__* NETFRONT_SKB_CB (struct sk_buff*) ;
 int __free_page (struct page*) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,void*,int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 void* page_address (struct page*) ;
 scalar_t__ skb_checksum_setup (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int handle_incoming_queue(struct net_device *dev,
     struct sk_buff_head *rxq)
{
 int packets_dropped = 0;
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(rxq)) != ((void*)0)) {
  struct page *page = NETFRONT_SKB_CB(skb)->page;
  void *vaddr = page_address(page);
  unsigned offset = NETFRONT_SKB_CB(skb)->offset;

  memcpy(skb->data, vaddr + offset,
         skb_headlen(skb));

  if (page != skb_shinfo(skb)->frags[0].page)
   __free_page(page);


  skb->protocol = eth_type_trans(skb, dev);

  if (skb->ip_summed == CHECKSUM_PARTIAL) {
   if (skb_checksum_setup(skb)) {
    kfree_skb(skb);
    packets_dropped++;
    dev->stats.rx_errors++;
    continue;
   }
  }

  dev->stats.rx_packets++;
  dev->stats.rx_bytes += skb->len;


  netif_receive_skb(skb);
 }

 return packets_dropped;
}
