
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
typedef int u_char ;
struct TYPE_9__ {scalar_t__ cmd; int dpath; scalar_t__ txcnt; } ;
struct TYPE_10__ {TYPE_3__ isar; } ;
struct BCState {scalar_t__ mode; int Flag; TYPE_4__ hw; int cs; int squeue; TYPE_5__* tx_skb; int aclock; int ackcnt; TYPE_2__* st; } ;
struct TYPE_11__ {scalar_t__ pkt_type; scalar_t__ len; } ;
struct TYPE_7__ {int flag; } ;
struct TYPE_8__ {TYPE_1__ lli; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_DLEETX ;
 int BC_FLG_LASTDATA ;
 int BC_FLG_LL_OK ;
 int BC_FLG_NMD_DATA ;
 int B_ACKPENDING ;
 int B_LL_CONNECT ;
 int B_XMTBUFREADY ;
 int FLG_LLI_L1WAKEUP ;
 int ISAR_HIS_SDATA ;
 scalar_t__ L1_MODE_FAX ;
 scalar_t__ PACKET_NOACK ;
 scalar_t__ PCTRL_CMD_FTH ;
 scalar_t__ PCTRL_CMD_FTM ;
 int SET_DPS (int ) ;
 int dev_kfree_skb_any (TYPE_5__*) ;
 int isar_fill_fifo (struct BCState*) ;
 int schedule_event (struct BCState*,int ) ;
 int sendmsg (int ,int,int,int,int *) ;
 TYPE_5__* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
send_frames(struct BCState *bcs)
{
 if (bcs->tx_skb) {
  if (bcs->tx_skb->len) {
   isar_fill_fifo(bcs);
   return;
  } else {
   if (test_bit(FLG_LLI_L1WAKEUP,&bcs->st->lli.flag) &&
    (PACKET_NOACK != bcs->tx_skb->pkt_type)) {
    u_long flags;
    spin_lock_irqsave(&bcs->aclock, flags);
    bcs->ackcnt += bcs->hw.isar.txcnt;
    spin_unlock_irqrestore(&bcs->aclock, flags);
    schedule_event(bcs, B_ACKPENDING);
   }
   if (bcs->mode == L1_MODE_FAX) {
    if (bcs->hw.isar.cmd == PCTRL_CMD_FTH) {
     if (test_bit(BC_FLG_LASTDATA, &bcs->Flag)) {
      test_and_set_bit(BC_FLG_NMD_DATA, &bcs->Flag);
     }
    } else if (bcs->hw.isar.cmd == PCTRL_CMD_FTM) {
     if (test_bit(BC_FLG_DLEETX, &bcs->Flag)) {
      test_and_set_bit(BC_FLG_LASTDATA, &bcs->Flag);
      test_and_set_bit(BC_FLG_NMD_DATA, &bcs->Flag);
     }
    }
   }
   dev_kfree_skb_any(bcs->tx_skb);
   bcs->hw.isar.txcnt = 0;
   bcs->tx_skb = ((void*)0);
  }
 }
 if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
  bcs->hw.isar.txcnt = 0;
  test_and_set_bit(BC_FLG_BUSY, &bcs->Flag);
  isar_fill_fifo(bcs);
 } else {
  if (test_and_clear_bit(BC_FLG_DLEETX, &bcs->Flag)) {
   if (test_and_clear_bit(BC_FLG_LASTDATA, &bcs->Flag)) {
    if (test_and_clear_bit(BC_FLG_NMD_DATA, &bcs->Flag)) {
     u_char dummy = 0;
     sendmsg(bcs->cs, SET_DPS(bcs->hw.isar.dpath) |
      ISAR_HIS_SDATA, 0x01, 1, &dummy);
    }
    test_and_set_bit(BC_FLG_LL_OK, &bcs->Flag);
   } else {
    schedule_event(bcs, B_LL_CONNECT);
   }
  }
  test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
  schedule_event(bcs, B_XMTBUFREADY);
 }
}
