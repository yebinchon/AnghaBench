
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rcvbuf; } ;
struct TYPE_4__ {TYPE_1__ hscx; } ;
struct BCState {scalar_t__ mode; int Flag; int * tx_skb; int squeue; int rqueue; TYPE_2__ hw; int channel; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_INIT ;
 scalar_t__ L1_MODE_MODEM ;
 int dev_kfree_skb_any (int *) ;
 int kfree (int *) ;
 int modehscx (struct BCState*,int ,int ) ;
 int skb_queue_purge (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
close_elsastate(struct BCState *bcs)
{
 modehscx(bcs, 0, bcs->channel);
 if (test_and_clear_bit(BC_FLG_INIT, &bcs->Flag)) {
  if (bcs->hw.hscx.rcvbuf) {
   if (bcs->mode != L1_MODE_MODEM)
    kfree(bcs->hw.hscx.rcvbuf);
   bcs->hw.hscx.rcvbuf = ((void*)0);
  }
  skb_queue_purge(&bcs->rqueue);
  skb_queue_purge(&bcs->squeue);
  if (bcs->tx_skb) {
   dev_kfree_skb_any(bcs->tx_skb);
   bcs->tx_skb = ((void*)0);
   test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
  }
 }
}
