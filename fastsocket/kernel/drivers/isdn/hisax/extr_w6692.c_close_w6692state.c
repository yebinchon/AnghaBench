
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rcvbuf; } ;
struct TYPE_4__ {TYPE_1__ w6692; } ;
struct BCState {int Flag; int * tx_skb; int squeue; int rqueue; int * blog; TYPE_2__ hw; int channel; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_INIT ;
 int W6692Bmode (struct BCState*,int ,int ) ;
 int dev_kfree_skb_any (int *) ;
 int kfree (int *) ;
 int skb_queue_purge (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
close_w6692state(struct BCState *bcs)
{
 W6692Bmode(bcs, 0, bcs->channel);
 if (test_and_clear_bit(BC_FLG_INIT, &bcs->Flag)) {
  kfree(bcs->hw.w6692.rcvbuf);
  bcs->hw.w6692.rcvbuf = ((void*)0);
  kfree(bcs->blog);
  bcs->blog = ((void*)0);
  skb_queue_purge(&bcs->rqueue);
  skb_queue_purge(&bcs->squeue);
  if (bcs->tx_skb) {
   dev_kfree_skb_any(bcs->tx_skb);
   bcs->tx_skb = ((void*)0);
   test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
  }
 }
}
