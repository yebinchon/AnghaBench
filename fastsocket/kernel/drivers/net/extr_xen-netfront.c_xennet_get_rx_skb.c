
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netfront_info {struct sk_buff** rx_skbs; } ;
typedef int RING_IDX ;


 int xennet_rxidx (int ) ;

__attribute__((used)) static struct sk_buff *xennet_get_rx_skb(struct netfront_info *np,
      RING_IDX ri)
{
 int i = xennet_rxidx(ri);
 struct sk_buff *skb = np->rx_skbs[i];
 np->rx_skbs[i] = ((void*)0);
 return skb;
}
