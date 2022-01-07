
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct sk_buff {scalar_t__ cb; } ;
struct ieee80211_tx_info {int dummy; } ;
struct dma_pub {int dummy; } ;
struct dma_info {size_t txin; size_t txout; struct sk_buff** txp; } ;
typedef int callback_fnc ;


 size_t nexttxd (struct dma_info*,size_t) ;

void dma_walk_packets(struct dma_pub *dmah, void (*callback_fnc)
        (void *pkt, void *arg_a), void *arg_a)
{
 struct dma_info *di = (struct dma_info *) dmah;
 uint i = di->txin;
 uint end = di->txout;
 struct sk_buff *skb;
 struct ieee80211_tx_info *tx_info;

 while (i != end) {
  skb = di->txp[i];
  if (skb != ((void*)0)) {
   tx_info = (struct ieee80211_tx_info *)skb->cb;
   (callback_fnc)(tx_info, arg_a);
  }
  i = nexttxd(di, i);
 }
}
