
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bchannel {int Flags; int * next_skb; int * rx_skb; scalar_t__ tx_idx; int * tx_skb; } ;


 int FLG_ACTIVE ;
 int FLG_TX_BUSY ;
 int FLG_TX_NEXT ;
 int dev_kfree_skb (int *) ;
 int test_and_clear_bit (int ,int *) ;

void
mISDN_clear_bchannel(struct bchannel *ch)
{
 if (ch->tx_skb) {
  dev_kfree_skb(ch->tx_skb);
  ch->tx_skb = ((void*)0);
 }
 ch->tx_idx = 0;
 if (ch->rx_skb) {
  dev_kfree_skb(ch->rx_skb);
  ch->rx_skb = ((void*)0);
 }
 if (ch->next_skb) {
  dev_kfree_skb(ch->next_skb);
  ch->next_skb = ((void*)0);
 }
 test_and_clear_bit(FLG_TX_BUSY, &ch->Flags);
 test_and_clear_bit(FLG_TX_NEXT, &ch->Flags);
 test_and_clear_bit(FLG_ACTIVE, &ch->Flags);
}
