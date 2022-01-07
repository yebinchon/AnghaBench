
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
struct TYPE_7__ {int bswapped; } ;
struct TYPE_8__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {TYPE_2__ hw; } ;
struct BCState {scalar_t__ mode; int Flag; TYPE_5__* tx_skb; int aclock; int ackcnt; TYPE_4__* st; int tx_cnt; scalar_t__ channel; struct IsdnCardState* cs; } ;
struct TYPE_11__ {scalar_t__ len; scalar_t__ pkt_type; } ;
struct TYPE_9__ {int flag; } ;
struct TYPE_10__ {TYPE_3__ lli; } ;


 int BC_FLG_BUSY ;
 int B_ACKPENDING ;
 int FLG_LLI_L1WAKEUP ;
 int HFCSX_BTRANS_THRESHOLD ;
 int HFCSX_SEL_B1_TX ;
 int HFCSX_SEL_B2_TX ;
 scalar_t__ L1_MODE_TRANS ;
 scalar_t__ PACKET_NOACK ;
 int dev_kfree_skb_any (TYPE_5__*) ;
 int schedule_event (struct BCState*,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ write_fifo (struct IsdnCardState*,TYPE_5__*,int ,int ) ;

__attribute__((used)) static void
hfcsx_fill_fifo(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;

 if (!bcs->tx_skb)
  return;
 if (bcs->tx_skb->len <= 0)
  return;

 if (write_fifo(cs, bcs->tx_skb,
         ((bcs->channel) && (!cs->hw.hfcsx.bswapped)) ?
         HFCSX_SEL_B2_TX : HFCSX_SEL_B1_TX,
         (bcs->mode == L1_MODE_TRANS) ?
         HFCSX_BTRANS_THRESHOLD : 0)) {

   bcs->tx_cnt -= bcs->tx_skb->len;
   if (test_bit(FLG_LLI_L1WAKEUP,&bcs->st->lli.flag) &&
  (PACKET_NOACK != bcs->tx_skb->pkt_type)) {
  u_long flags;
  spin_lock_irqsave(&bcs->aclock, flags);
  bcs->ackcnt += bcs->tx_skb->len;
  spin_unlock_irqrestore(&bcs->aclock, flags);
  schedule_event(bcs, B_ACKPENDING);
   }
   dev_kfree_skb_any(bcs->tx_skb);
   bcs->tx_skb = ((void*)0);
   test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
 }
}
