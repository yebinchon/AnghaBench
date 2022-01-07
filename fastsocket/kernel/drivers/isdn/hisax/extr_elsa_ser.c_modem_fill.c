
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_9__ {scalar_t__ count; } ;
struct TYPE_10__ {TYPE_3__ hscx; } ;
struct BCState {int Flag; TYPE_4__ hw; int squeue; TYPE_5__* tx_skb; int aclock; int ackcnt; TYPE_2__* st; } ;
struct TYPE_11__ {scalar_t__ pkt_type; scalar_t__ len; } ;
struct TYPE_7__ {int flag; } ;
struct TYPE_8__ {TYPE_1__ lli; } ;


 int BC_FLG_BUSY ;
 int B_ACKPENDING ;
 int B_XMTBUFREADY ;
 int FLG_LLI_L1WAKEUP ;
 scalar_t__ PACKET_NOACK ;
 int dev_kfree_skb_any (TYPE_5__*) ;
 int schedule_event (struct BCState*,int ) ;
 TYPE_5__* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int write_modem (struct BCState*) ;

__attribute__((used)) static inline void
modem_fill(struct BCState *bcs) {

 if (bcs->tx_skb) {
  if (bcs->tx_skb->len) {
   write_modem(bcs);
   return;
  } else {
   if (test_bit(FLG_LLI_L1WAKEUP,&bcs->st->lli.flag) &&
    (PACKET_NOACK != bcs->tx_skb->pkt_type)) {
    u_long flags;
    spin_lock_irqsave(&bcs->aclock, flags);
    bcs->ackcnt += bcs->hw.hscx.count;
    spin_unlock_irqrestore(&bcs->aclock, flags);
    schedule_event(bcs, B_ACKPENDING);
   }
   dev_kfree_skb_any(bcs->tx_skb);
   bcs->tx_skb = ((void*)0);
  }
 }
 if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
  bcs->hw.hscx.count = 0;
  test_and_set_bit(BC_FLG_BUSY, &bcs->Flag);
  write_modem(bcs);
 } else {
  test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
  schedule_event(bcs, B_XMTBUFREADY);
 }
}
