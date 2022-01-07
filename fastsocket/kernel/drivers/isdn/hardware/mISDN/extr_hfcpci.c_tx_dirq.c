
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dchannel {scalar_t__ tx_idx; int hw; TYPE_1__* tx_skb; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int dev_kfree_skb (TYPE_1__*) ;
 scalar_t__ get_next_dframe (struct dchannel*) ;
 int hfcpci_fill_dfifo (int ) ;

__attribute__((used)) static inline void
tx_dirq(struct dchannel *dch)
{
 if (dch->tx_skb && dch->tx_idx < dch->tx_skb->len)
  hfcpci_fill_dfifo(dch->hw);
 else {
  if (dch->tx_skb)
   dev_kfree_skb(dch->tx_skb);
  if (get_next_dframe(dch))
   hfcpci_fill_dfifo(dch->hw);
 }
}
