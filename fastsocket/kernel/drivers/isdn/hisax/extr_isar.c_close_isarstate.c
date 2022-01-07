
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ftimer; int * rcvbuf; } ;
struct TYPE_5__ {TYPE_1__ isar; } ;
struct BCState {TYPE_2__ hw; TYPE_3__* cs; int Flag; int * tx_skb; int squeue; int rqueue; int channel; } ;
struct TYPE_6__ {int debug; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_INIT ;
 int L1_DEB_HSCX ;
 int debugl1 (TYPE_3__*,char*) ;
 int del_timer (int *) ;
 int dev_kfree_skb_any (int *) ;
 int kfree (int *) ;
 int modeisar (struct BCState*,int ,int ) ;
 int skb_queue_purge (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
close_isarstate(struct BCState *bcs)
{
 modeisar(bcs, 0, bcs->channel);
 if (test_and_clear_bit(BC_FLG_INIT, &bcs->Flag)) {
  kfree(bcs->hw.isar.rcvbuf);
  bcs->hw.isar.rcvbuf = ((void*)0);
  skb_queue_purge(&bcs->rqueue);
  skb_queue_purge(&bcs->squeue);
  if (bcs->tx_skb) {
   dev_kfree_skb_any(bcs->tx_skb);
   bcs->tx_skb = ((void*)0);
   test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
   if (bcs->cs->debug & L1_DEB_HSCX)
    debugl1(bcs->cs, "closeisar clear BC_FLG_BUSY");
  }
 }
 del_timer(&bcs->hw.isar.ftimer);
}
