
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bchannel {scalar_t__ tx_idx; TYPE_1__* tx_skb; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int dev_kfree_skb (TYPE_1__*) ;
 scalar_t__ get_next_bframe (struct bchannel*) ;
 int hfcpci_fill_fifo (struct bchannel*) ;

__attribute__((used)) static inline void
tx_birq(struct bchannel *bch)
{
 if (bch->tx_skb && bch->tx_idx < bch->tx_skb->len)
  hfcpci_fill_fifo(bch);
 else {
  if (bch->tx_skb)
   dev_kfree_skb(bch->tx_skb);
  if (get_next_bframe(bch))
   hfcpci_fill_fifo(bch);
 }
}
