
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {int rx_nfrags; TYPE_1__* hw; scalar_t__ rx_data_size; int netdev; } ;
struct sk_buff {int data; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int GFP_ATOMIC ;
 unsigned char* NET_IP_ALIGN ;
 int PAGE_SIZE ;
 unsigned char* PTR_ALIGN (int,int) ;
 int SKY2_HW_RAM_BUFFER ;
 struct page* alloc_page (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,scalar_t__) ;
 int skb_fill_page_desc (struct sk_buff*,int,struct page*,int ,int ) ;
 int skb_reserve (struct sk_buff*,unsigned char*) ;
 scalar_t__ sky2_rx_pad (TYPE_1__*) ;

__attribute__((used)) static struct sk_buff *sky2_rx_alloc(struct sky2_port *sky2)
{
 struct sk_buff *skb;
 int i;

 skb = netdev_alloc_skb(sky2->netdev,
          sky2->rx_data_size + sky2_rx_pad(sky2->hw));
 if (!skb)
  goto nomem;

 if (sky2->hw->flags & SKY2_HW_RAM_BUFFER) {
  unsigned char *start;






  start = PTR_ALIGN(skb->data, 8);
  skb_reserve(skb, start - skb->data);
 } else
  skb_reserve(skb, NET_IP_ALIGN);

 for (i = 0; i < sky2->rx_nfrags; i++) {
  struct page *page = alloc_page(GFP_ATOMIC);

  if (!page)
   goto free_partial;
  skb_fill_page_desc(skb, i, page, 0, PAGE_SIZE);
 }

 return skb;
free_partial:
 kfree_skb(skb);
nomem:
 return ((void*)0);
}
