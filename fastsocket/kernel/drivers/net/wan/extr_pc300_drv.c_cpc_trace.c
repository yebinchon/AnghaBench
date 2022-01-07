
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {char* data; scalar_t__ len; int pkt_type; int protocol; struct net_device* dev; } ;
struct net_device {int name; } ;


 int ETH_P_CUST ;
 int PACKET_HOST ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int htons (int ) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,char*,scalar_t__) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,int) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void
cpc_trace(struct net_device *dev, struct sk_buff *skb_main, char rx_tx)
{
 struct sk_buff *skb;

 if ((skb = dev_alloc_skb(10 + skb_main->len)) == ((void*)0)) {
  printk("%s: out of memory\n", dev->name);
  return;
 }
 skb_put(skb, 10 + skb_main->len);

 skb->dev = dev;
 skb->protocol = htons(ETH_P_CUST);
 skb_reset_mac_header(skb);
 skb->pkt_type = PACKET_HOST;
 skb->len = 10 + skb_main->len;

 skb_copy_to_linear_data(skb, dev->name, 5);
 skb->data[5] = '[';
 skb->data[6] = rx_tx;
 skb->data[7] = ']';
 skb->data[8] = ':';
 skb->data[9] = ' ';
 skb_copy_from_linear_data(skb_main, &skb->data[10], skb_main->len);

 netif_rx(skb);
}
