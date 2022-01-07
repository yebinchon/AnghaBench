
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BCState {int Flag; int * tx_skb; int squeue; int rqueue; int channel; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_INIT ;
 int dev_kfree_skb_any (int *) ;
 int mode_2bs0 (struct BCState*,int ,int ) ;
 int skb_queue_purge (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
close_2bs0(struct BCState *bcs)
{
 mode_2bs0(bcs, 0, bcs->channel);
 if (test_and_clear_bit(BC_FLG_INIT, &bcs->Flag)) {
  skb_queue_purge(&bcs->rqueue);
  skb_queue_purge(&bcs->squeue);
  if (bcs->tx_skb) {
   dev_kfree_skb_any(bcs->tx_skb);
   bcs->tx_skb = ((void*)0);
   test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
  }
 }
}
