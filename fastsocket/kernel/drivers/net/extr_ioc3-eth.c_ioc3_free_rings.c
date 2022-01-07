
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ioc3_private {int rx_ci; int rx_pi; int * rxr; struct sk_buff** rx_skbs; int * txr; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,int) ;
 int ioc3_clean_tx_ring (struct ioc3_private*) ;

__attribute__((used)) static void ioc3_free_rings(struct ioc3_private *ip)
{
 struct sk_buff *skb;
 int rx_entry, n_entry;

 if (ip->txr) {
  ioc3_clean_tx_ring(ip);
  free_pages((unsigned long)ip->txr, 2);
  ip->txr = ((void*)0);
 }

 if (ip->rxr) {
  n_entry = ip->rx_ci;
  rx_entry = ip->rx_pi;

  while (n_entry != rx_entry) {
   skb = ip->rx_skbs[n_entry];
   if (skb)
    dev_kfree_skb_any(skb);

   n_entry = (n_entry + 1) & 511;
  }
  free_page((unsigned long)ip->rxr);
  ip->rxr = ((void*)0);
 }
}
