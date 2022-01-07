
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ioc3_private {unsigned long* rxr; int rx_pi; scalar_t__ tx_ci; scalar_t__ tx_pi; struct ioc3_etxd* txr; scalar_t__ rx_ci; struct sk_buff** rx_skbs; } ;
struct ioc3_etxd {int dummy; } ;
struct ioc3_erxbuf {int dummy; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int RX_BUFFS ;
 int RX_BUF_ALLOC_SIZE ;
 scalar_t__ RX_OFFSET ;
 scalar_t__ __get_free_pages (int ,int) ;
 unsigned long cpu_to_be64 (int ) ;
 scalar_t__ get_zeroed_page (int ) ;
 struct sk_buff* ioc3_alloc_skb (int ,int ) ;
 int ioc3_map (struct ioc3_erxbuf*,int) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int printk (char*) ;
 int show_free_areas () ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void ioc3_alloc_rings(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3_erxbuf *rxb;
 unsigned long *rxr;
 int i;

 if (ip->rxr == ((void*)0)) {

  ip->rxr = (unsigned long *) get_zeroed_page(GFP_ATOMIC);
  rxr = (unsigned long *) ip->rxr;
  if (!rxr)
   printk("ioc3_alloc_rings(): get_zeroed_page() failed!\n");




  for (i = 0; i < RX_BUFFS; i++) {
   struct sk_buff *skb;

   skb = ioc3_alloc_skb(RX_BUF_ALLOC_SIZE, GFP_ATOMIC);
   if (!skb) {
    show_free_areas();
    continue;
   }

   ip->rx_skbs[i] = skb;


   skb_put(skb, (1664 + RX_OFFSET));
   rxb = (struct ioc3_erxbuf *) skb->data;
   rxr[i] = cpu_to_be64(ioc3_map(rxb, 1));
   skb_reserve(skb, RX_OFFSET);
  }
  ip->rx_ci = 0;
  ip->rx_pi = RX_BUFFS;
 }

 if (ip->txr == ((void*)0)) {

  ip->txr = (struct ioc3_etxd *)__get_free_pages(GFP_KERNEL, 2);
  if (!ip->txr)
   printk("ioc3_alloc_rings(): __get_free_pages() failed!\n");
  ip->tx_pi = 0;
  ip->tx_ci = 0;
 }
}
