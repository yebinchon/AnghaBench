
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rcvbuf; } ;
struct TYPE_4__ {TYPE_1__ hscx; } ;
struct BCState {int Flag; int * tx_skb; int squeue; int rqueue; int * blog; TYPE_2__ hw; int channel; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_INIT ;
 int dev_kfree_skb_any (int *) ;
 int kfree (int *) ;
 int modejade (struct BCState*,int ,int ) ;
 int skb_queue_purge (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
close_jadestate(struct BCState *bcs)
{
    modejade(bcs, 0, bcs->channel);
    if (test_and_clear_bit(BC_FLG_INIT, &bcs->Flag)) {
 kfree(bcs->hw.hscx.rcvbuf);
 bcs->hw.hscx.rcvbuf = ((void*)0);
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
