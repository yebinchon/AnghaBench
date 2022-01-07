
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct s6gmac {int io; int rx_chan; int rx_dma; scalar_t__ rx_skb_i; struct sk_buff** rx_skb; scalar_t__ rx_skb_o; } ;


 scalar_t__ S6_MAX_FRLEN ;
 size_t S6_NUM_RX_SKB ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int s6dmac_fifo_full (int ,int ) ;
 int s6dmac_put_fifo_cache (int ,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void s6gmac_rx_fillfifo(struct s6gmac *pd)
{
 struct sk_buff *skb;
 while ((((u8)(pd->rx_skb_i - pd->rx_skb_o)) < S6_NUM_RX_SKB)
   && (!s6dmac_fifo_full(pd->rx_dma, pd->rx_chan))
   && (skb = dev_alloc_skb(S6_MAX_FRLEN + 2))) {
  pd->rx_skb[(pd->rx_skb_i++) % S6_NUM_RX_SKB] = skb;
  s6dmac_put_fifo_cache(pd->rx_dma, pd->rx_chan,
   pd->io, (u32)skb->data, S6_MAX_FRLEN);
 }
}
