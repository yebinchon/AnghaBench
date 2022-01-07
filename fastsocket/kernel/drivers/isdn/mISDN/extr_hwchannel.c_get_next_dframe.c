
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dchannel {int Flags; int * tx_skb; int squeue; scalar_t__ tx_idx; } ;


 int FLG_TX_BUSY ;
 int confirm_Dsend (struct dchannel*) ;
 int * skb_dequeue (int *) ;
 int test_and_clear_bit (int ,int *) ;

int
get_next_dframe(struct dchannel *dch)
{
 dch->tx_idx = 0;
 dch->tx_skb = skb_dequeue(&dch->squeue);
 if (dch->tx_skb) {
  confirm_Dsend(dch);
  return 1;
 }
 dch->tx_skb = ((void*)0);
 test_and_clear_bit(FLG_TX_BUSY, &dch->Flags);
 return 0;
}
